.class public Lcom/android/gallery3d/ui/TiledTexture;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/Texture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/TiledTexture$1;,
        Lcom/android/gallery3d/ui/TiledTexture$Tile;,
        Lcom/android/gallery3d/ui/TiledTexture$Uploader;
    }
.end annotation


# static fields
.field private static sBitmapPaint:Landroid/graphics/Paint;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

.field private static final sFreeTileLock:Ljava/lang/Object;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sUploadBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final mDestRect:Landroid/graphics/RectF;

.field private final mHeight:I

.field private final mSrcRect:Landroid/graphics/RectF;

.field private final mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

.field private mUploadIndex:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    const/16 v8, 0xfe

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    .line 63
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 64
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/ui/TiledTexture$Tile;>;"
    const/4 v4, 0x0

    .local v4, x:I
    iget v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    .local v3, w:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 210
    const/4 v5, 0x0

    .local v5, y:I
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    .local v0, h:I
    :goto_1
    if-ge v5, v0, :cond_0

    .line 211
    invoke-static {}, Lcom/android/gallery3d/ui/TiledTexture;->obtainTile()Lcom/android/gallery3d/ui/TiledTexture$Tile;

    move-result-object v2

    .line 212
    .local v2, tile:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    iput v4, v2, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    .line 213
    iput v5, v2, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    .line 214
    iput-object p1, v2, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 215
    iget v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    sub-int/2addr v6, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    sub-int/2addr v7, v5

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/android/gallery3d/ui/TiledTexture$Tile;->setSize(II)V

    .line 218
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit16 v5, v5, 0xfe

    goto :goto_1

    .line 209
    .end local v2           #tile:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :cond_0
    add-int/lit16 v4, v4, 0xfe

    goto :goto_0

    .line 221
    .end local v0           #h:I
    .end local v5           #y:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/gallery3d/ui/TiledTexture$Tile;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/gallery3d/ui/TiledTexture$Tile;

    iput-object v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/TiledTexture;Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/TiledTexture;->uploadNextTile(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static freeResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 237
    sput-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 239
    :cond_0
    sput-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 240
    sput-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 241
    sput-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 242
    return-void
.end method

.method private static freeTile(Lcom/android/gallery3d/ui/TiledTexture$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/UploadedTexture;->invalidateContent()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 168
    sget-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    iput-object v0, p0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 170
    sput-object p0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
    .locals 4
    .parameter "output"
    .parameter "src"
    .parameter "x0"
    .parameter "y0"
    .parameter "x"
    .parameter "y"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 270
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p6

    add-float/2addr v0, p4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    mul-float/2addr v1, p7

    add-float/2addr v1, p5

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p2

    mul-float/2addr v2, p6

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    mul-float/2addr v3, p7

    add-float/2addr v3, p5

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 274
    return-void
.end method

.method private static obtainTile()Lcom/android/gallery3d/ui/TiledTexture$Tile;
    .locals 3

    .prologue
    .line 175
    sget-object v2, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 176
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 177
    .local v0, result:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .end local v0           #result:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/TiledTexture$Tile;-><init>(Lcom/android/gallery3d/ui/TiledTexture$1;)V

    monitor-exit v2

    .line 180
    .restart local v0       #result:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :goto_0
    return-object v0

    .line 178
    :cond_0
    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    sput-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sFreeTileHead:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 179
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture$Tile;->nextFreeTile:Lcom/android/gallery3d/ui/TiledTexture$Tile;

    .line 180
    monitor-exit v2

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static prepareResources()V
    .locals 3

    .prologue
    const/16 v1, 0x100

    .line 245
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 246
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/android/gallery3d/ui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 248
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 249
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 250
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 251
    sget-object v0, Lcom/android/gallery3d/ui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    return-void
.end method

.method private uploadNextTile(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v2

    .line 187
    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    iget v5, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    aget-object v1, v4, v5

    .line 191
    .local v1, next:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    iget-object v4, v1, Lcom/android/gallery3d/ui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 192
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    .line 193
    .local v0, hasBeenLoad:Z
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/UploadedTexture;->updateContent(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 199
    if-nez v0, :cond_2

    invoke-virtual {v1, p1, v3, v3}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 201
    .end local v0           #hasBeenLoad:Z
    :cond_2
    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    iget-object v5, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v5, v5

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 345
    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    iget v5, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/TiledTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 346
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 12
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 297
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 298
    .local v2, src:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 299
    .local v1, dest:Landroid/graphics/RectF;
    move/from16 v0, p4

    int-to-float v3, v0

    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    .line 300
    .local v7, scaleX:F
    move/from16 v0, p5

    int-to-float v3, v0

    iget v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 301
    .local v8, scaleY:F
    const/4 v9, 0x0

    .local v9, i:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v10, v3

    .local v10, n:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 302
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v11, v3, v9

    .line 303
    .local v11, t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 304
    iget v3, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 305
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/ui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 306
    iget v3, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 307
    iget-object v3, p0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    invoke-interface {p1, v11, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 301
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 309
    .end local v11           #t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :cond_0
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 16
    .parameter "canvas"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 314
    .local v2, src:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 315
    .local v1, dest:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 316
    .local v3, x0:F
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 317
    .local v4, y0:F
    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 318
    .local v5, x:F
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/RectF;->top:F

    .line 319
    .local v6, y:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v7, v12, v13

    .line 320
    .local v7, scaleX:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v8, v12, v13

    .line 322
    .local v8, scaleY:F
    const/4 v9, 0x0

    .local v9, i:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v10, v12

    .local v10, n:I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v11, v12, v9

    .line 324
    .local v11, t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    int-to-float v14, v14

    iget v15, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    int-to-float v15, v15

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    iget v12, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    int-to-float v12, v12

    iget v13, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    int-to-float v13, v13

    invoke-virtual {v2, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 326
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 322
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 327
    :cond_0
    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/ui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 328
    iget v12, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    iget v13, v11, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v13, v13, 0x1

    int-to-float v13, v13

    invoke-virtual {v2, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 329
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2, v1}, Lcom/android/gallery3d/ui/GLCanvas;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1

    .line 331
    .end local v11           #t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :cond_1
    return-void
.end method

.method public drawMixed(Lcom/android/gallery3d/ui/GLCanvas;IFIIII)V
    .locals 17
    .parameter "canvas"
    .parameter "color"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 281
    .local v2, src:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 282
    .local v1, dest:Landroid/graphics/RectF;
    move/from16 v0, p6

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    .line 283
    .local v7, scaleX:F
    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 284
    .local v8, scaleY:F
    const/4 v15, 0x0

    .local v15, i:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v0, v3

    move/from16 v16, v0

    .local v16, n:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v10, v3, v15

    .line 286
    .local v10, t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 287
    iget v3, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 288
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    invoke-static/range {v1 .. v8}, Lcom/android/gallery3d/ui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 289
    iget v3, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v10, Lcom/android/gallery3d/ui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/ui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/ui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-interface/range {v9 .. v14}, Lcom/android/gallery3d/ui/GLCanvas;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 284
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 292
    .end local v10           #t:Lcom/android/gallery3d/ui/TiledTexture$Tile;
    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Lcom/android/gallery3d/ui/TiledTexture;->mUploadIndex:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/gallery3d/ui/TiledTexture;->mTiles:[Lcom/android/gallery3d/ui/TiledTexture$Tile;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/gallery3d/ui/TiledTexture;->freeTile(Lcom/android/gallery3d/ui/TiledTexture$Tile;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method
