.class Lcom/android/gallery3d/data/FilterTypeSet$2;
.super Ljava/lang/Object;
.source "FilterTypeSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/data/FilterTypeSet;->delete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/data/FilterTypeSet;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/data/FilterTypeSet;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/gallery3d/data/FilterTypeSet$2;->this$0:Lcom/android/gallery3d/data/FilterTypeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 1
    .parameter "index"
    .parameter "item"

    .prologue
    .line 135
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaObject;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaObject;->delete()V

    .line 138
    :cond_0
    return-void
.end method
