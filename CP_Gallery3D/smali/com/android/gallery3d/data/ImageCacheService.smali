.class public Lcom/android/gallery3d/data/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# instance fields
.field private mCache:Lcom/android/gallery3d/common/BlobCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "imgcache"

    const/16 v1, 0x1388

    const/high16 v2, 0xc80

    const/4 v3, 0x7

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    .line 46
    return-void
.end method

.method private static isSameKey([B[B)Z
    .locals 5
    .parameter "key"
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 115
    array-length v1, p0

    .line 116
    .local v1, n:I
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 119
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 120
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static makeKey(Lcom/android/gallery3d/data/Path;II)[B
    .locals 2
    .parameter "path"
    .parameter "type"
    .parameter "coverTpye"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cacheIsNull()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageData(Lcom/android/gallery3d/data/Path;IILcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    .locals 7
    .parameter "path"
    .parameter "type"
    .parameter "coverTpye"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;II)[B

    move-result-object v2

    .line 63
    .local v2, key:[B
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 65
    .local v0, cacheKey:J
    :try_start_0
    new-instance v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v3}, Lcom/android/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    .line 66
    .local v3, request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    iput-wide v0, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->key:J

    .line 67
    iget-object v5, p4, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iput-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 68
    iget-object v6, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v5, v3}, Lcom/android/gallery3d/common/BlobCache;->lookup(Lcom/android/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v6

    .line 80
    .end local v3           #request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    :cond_0
    :goto_0
    return v4

    .line 70
    .restart local v3       #request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    iget-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    invoke-static {v2, v5}, Lcom/android/gallery3d/data/ImageCacheService;->isSameKey([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    iget-object v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iput-object v5, p4, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 73
    array-length v5, v2

    iput v5, p4, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 74
    iget v5, v3, Lcom/android/gallery3d/common/BlobCache$LookupRequest;->length:I

    iget v6, p4, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v5, v6

    iput v5, p4, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    const/4 v4, 0x1

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    .end local v3           #request:Lcom/android/gallery3d/common/BlobCache$LookupRequest;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public putImageData(Lcom/android/gallery3d/data/Path;II[B)V
    .locals 7
    .parameter "path"
    .parameter "type"
    .parameter "coverTpye"
    .parameter "value"

    .prologue
    .line 84
    invoke-static {p1, p2, p3}, Lcom/android/gallery3d/data/ImageCacheService;->makeKey(Lcom/android/gallery3d/data/Path;II)[B

    move-result-object v3

    .line 85
    .local v3, key:[B
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v1

    .line 86
    .local v1, cacheKey:J
    array-length v4, v3

    array-length v5, p4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    iget-object v5, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    monitor-enter v5

    .line 91
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/ImageCacheService;->mCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v1, v2, v6}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    :try_start_1
    monitor-exit v5

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 92
    :catch_0
    move-exception v4

    goto :goto_0
.end method
