.class public Lcom/android/gallery3d/ui/PhotoView;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;,
        Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;,
        Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;,
        Lcom/android/gallery3d/ui/PhotoView$FullPicture;,
        Lcom/android/gallery3d/ui/PhotoView$Picture;,
        Lcom/android/gallery3d/ui/PhotoView$MyHandler;,
        Lcom/android/gallery3d/ui/PhotoView$Listener;,
        Lcom/android/gallery3d/ui/PhotoView$Model;,
        Lcom/android/gallery3d/ui/PhotoView$Size;
    }
.end annotation


# static fields
.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static TRANSITION_SCALE_FACTOR:F


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAudioJpegIcon:Lcom/android/gallery3d/ui/Texture;

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCancelExtraScalingPending:Z

.field private mCompensation:I

.field private mContext:Landroid/content/Context;

.field private mDateText:Lcom/android/gallery3d/ui/StringTexture;

.field private mDisplayRotation:I

.field private mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

.field private mFilmMode:Z

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

.field private mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mHolding:I

.field private mLaunchTime:J

.field private mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

.field private mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

.field private mNextBound:I

.field private mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

.field private final mPictures:Lcom/android/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/RangeArray",
            "<",
            "Lcom/android/gallery3d/ui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceholderColor:I

.field private final mPositionController:Lcom/android/gallery3d/ui/PositionController;

.field private mPrevBound:I

.field private mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

.field private mSgModel:Lcom/android/gallery3d/ui/PhotoView$Model;

.field private mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

.field private mTileView:Lcom/android/gallery3d/ui/TileImageView;

.field private mTouchBoxDeletable:Z

.field private mTouchBoxIndex:I

.field private mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

.field private mWantPictureCenterCallbacks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 175
    const v0, 0x3f3d70a4

    sput v0, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    .line 263
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd kk:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/ui/PhotoView;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const v5, 0x7fffffff

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 268
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 185
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    const/high16 v2, 0x3f00

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    .line 188
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f666666

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 200
    new-instance v1, Lcom/android/gallery3d/util/RangeArray;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v4}, Lcom/android/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    .line 202
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/gallery3d/ui/PhotoView$Size;

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    .line 221
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 222
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 223
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 224
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 226
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 227
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    .line 247
    iput v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 254
    iput v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 257
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mLaunchTime:J

    .line 269
    new-instance v1, Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/ui/TileImageView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    .line 270
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 271
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    .line 272
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    .line 274
    new-instance v1, Lcom/android/gallery3d/ui/EdgeView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    .line 275
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 276
    new-instance v1, Lcom/android/gallery3d/ui/UndoBarView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/UndoBarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    .line 277
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 278
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/UndoBarView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/PhotoView$1;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/UndoBarView;->setOnClickListener(Lcom/android/gallery3d/ui/GLView$OnClickListener;)V

    .line 286
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v2, 0x7f0e007c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41a0

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 290
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$MyHandler;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/PhotoView$MyHandler;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 292
    new-instance v1, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    .line 293
    new-instance v1, Lcom/android/gallery3d/ui/GestureRecognizer;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    .line 295
    new-instance v1, Lcom/android/gallery3d/ui/PositionController;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$2;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$2;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/PositionController;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/PositionController$Listener;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 328
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f02011b

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    .line 329
    new-instance v1, Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f0201d6

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mAudioJpegIcon:Lcom/android/gallery3d/ui/Texture;

    .line 330
    const/4 v0, -0x2

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_1

    .line 331
    if-nez v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$FullPicture;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/PhotoView$FullPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 330
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    new-instance v2, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/android/gallery3d/ui/PhotoView;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 337
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/ui/PhotoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->showUndoBar(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/TileImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mSgModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$Model;)Lcom/android/gallery3d/ui/PhotoView$Model;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mSgModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/util/RangeArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$2400(III)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2700(FFF)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/gallery3d/ui/PhotoView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$3000()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/gallery3d/ui/PhotoView;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/StringTexture;)Lcom/android/gallery3d/ui/StringTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDateText:Lcom/android/gallery3d/ui/StringTexture;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawDateText(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawAudioJpegIcon(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/gallery3d/ui/PhotoView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->switchToHitPicture(II)V

    return-void
.end method

.method static synthetic access$372(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$376(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/EdgeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/gallery3d/ui/PhotoView;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->swipeImages(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4202(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/GestureRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method private static calculateMoveOutProgress(III)F
    .locals 4
    .parameter "left"
    .parameter "right"
    .parameter "viewWidth"

    .prologue
    .line 1871
    sub-int v0, p1, p0

    .line 1878
    .local v0, w:I
    if-ge v0, p2, :cond_1

    .line 1879
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int v1, v2, v3

    .line 1880
    .local v1, zx:I
    if-le p0, v1, :cond_0

    .line 1881
    sub-int v2, p0, v1

    neg-int v2, v2

    int-to-float v2, v2

    sub-int v3, p2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1901
    .end local v1           #zx:I
    :goto_0
    return v2

    .line 1883
    .restart local v1       #zx:I
    :cond_0
    sub-int v2, p0, v1

    int-to-float v2, v2

    neg-int v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 1893
    .end local v1           #zx:I
    :cond_1
    if-lez p0, :cond_2

    .line 1894
    neg-int v2, p0

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 1897
    :cond_2
    if-ge p1, p2, :cond_3

    .line 1898
    sub-int v2, p2, p1

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 1901
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private captureAnimationDone(I)V
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v1, 0x1

    .line 1845
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 1846
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1849
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    .line 1851
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapback()V

    .line 1852
    return-void
.end method

.method private checkFocusSwitching()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1605
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_1

    .line 1610
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1607
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkHideUndoBar(I)V
    .locals 7
    .parameter "addition"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1535
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/2addr v6, p1

    iput v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1536
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 1548
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    move v2, v4

    .line 1538
    .local v2, timeout:Z
    :goto_1
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_6

    move v3, v4

    .line 1539
    .local v3, touched:Z
    :goto_2
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_7

    move v1, v4

    .line 1540
    .local v1, fullCamera:Z
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_8

    move v0, v4

    .line 1541
    .local v0, deleteLast:Z
    :goto_4
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    .line 1544
    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1546
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    goto :goto_0

    .end local v0           #deleteLast:Z
    .end local v1           #fullCamera:Z
    .end local v2           #timeout:Z
    .end local v3           #touched:Z
    :cond_5
    move v2, v5

    .line 1537
    goto :goto_1

    .restart local v2       #timeout:Z
    :cond_6
    move v3, v5

    .line 1538
    goto :goto_2

    .restart local v3       #touched:Z
    :cond_7
    move v1, v5

    .line 1539
    goto :goto_3

    .restart local v1       #fullCamera:Z
    :cond_8
    move v0, v5

    .line 1540
    goto :goto_4
.end method

.method private drawAudioJpegIcon(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "canvas"
    .parameter "r"

    .prologue
    const/16 v5, 0x32

    .line 1022
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1023
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x10

    .line 1027
    .local v0, x:I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v3

    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 1028
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x12

    .line 1031
    .local v1, y:I
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mAudioJpegIcon:Lcom/android/gallery3d/ui/Texture;

    invoke-interface {v2, p1, v0, v1}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 1032
    return-void

    .line 1025
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x10

    .restart local v0       #x:I
    goto :goto_0

    .line 1030
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v5}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v3

    add-int v1, v2, v3

    .restart local v1       #y:I
    goto :goto_1
.end method

.method private drawDateText(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mDateText:Lcom/android/gallery3d/ui/StringTexture;

    .line 1037
    .local v0, m:Lcom/android/gallery3d/ui/StringTexture;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int/lit8 v1, v1, 0xd

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 1038
    return-void
.end method

.method private drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 1044
    .local v0, m:Lcom/android/gallery3d/ui/StringTexture;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/StringTexture;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 1045
    return-void
.end method

.method private drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 1009
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/GLCanvas;->fillRect(FFFFI)V

    .line 1010
    return-void
.end method

.method private drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 6
    .parameter "canvas"
    .parameter "side"

    .prologue
    .line 1014
    div-int/lit8 v4, p2, 0x6

    .line 1016
    .local v4, s:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 1017
    return-void
.end method

.method private static gapToSide(II)I
    .locals 2
    .parameter "imageWidth"
    .parameter "viewWidth"

    .prologue
    .line 1749
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getOffsetAlpha(F)F
    .locals 3
    .parameter "offset"

    .prologue
    const/high16 v2, 0x3f80

    .line 1949
    const/high16 v1, 0x3f00

    div-float/2addr p1, v1

    .line 1950
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sub-float v0, v2, p1

    .line 1951
    .local v0, alpha:F
    :goto_0
    const v1, 0x3cf5c28f

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1

    .line 1950
    .end local v0           #alpha:F
    :cond_0
    add-float v0, v2, p1

    goto :goto_0
.end method

.method private getPanoramaRotation()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 598
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 599
    .local v2, orientation:I
    if-ne v2, v3, :cond_1

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v3

    .line 601
    .local v1, invertPortrait:Z
    :goto_0
    iget v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0xb4

    if-lt v5, v6, :cond_2

    move v0, v3

    .line 602
    .local v0, invert:Z
    :goto_1
    if-eq v0, v1, :cond_3

    .line 603
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    .line 605
    :goto_2
    return v3

    .end local v0           #invert:Z
    .end local v1           #invertPortrait:Z
    :cond_1
    move v1, v4

    .line 599
    goto :goto_0

    .restart local v1       #invertPortrait:Z
    :cond_2
    move v0, v4

    .line 601
    goto :goto_1

    .line 605
    .restart local v0       #invert:Z
    :cond_3
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    goto :goto_2
.end method

.method private static getRotated(III)I
    .locals 1
    .parameter "degree"
    .parameter "original"
    .parameter "theother"

    .prologue
    .line 1048
    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private getScrollAlpha(F)F
    .locals 3
    .parameter "scrollProgress"

    .prologue
    const/high16 v0, 0x3f80

    .line 1907
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    return v0
.end method

.method private getScrollScale(F)F
    .locals 4
    .parameter "scrollProgress"

    .prologue
    .line 1914
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ZInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1916
    .local v0, interpolatedProgress:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    sget v3, Lcom/android/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 1918
    .local v1, scale:F
    return v1
.end method

.method private hideUndoBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1518
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1519
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1520
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1521
    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1522
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 1523
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 1524
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 1
    .parameter "ratio"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1943
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private setPictureSize(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 503
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 504
    .local v0, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Lcom/android/gallery3d/ui/PositionController;->setImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    .line 506
    return-void

    .line 504
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUndoBar(Z)V
    .locals 5
    .parameter "deleteLast"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 1509
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1510
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1511
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 1512
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 1513
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1514
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 1515
    :cond_1
    return-void
.end method

.method private slideToNextPicture()Z
    .locals 1

    .prologue
    .line 1735
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 1738
    :goto_0
    return v0

    .line 1736
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 1737
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 1738
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private slideToPrevPicture()Z
    .locals 1

    .prologue
    .line 1742
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 1745
    :goto_0
    return v0

    .line 1743
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    .line 1744
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->startHorizontalSlide()V

    .line 1745
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private snapToNeighborImage()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1712
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1713
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v3

    .line 1715
    .local v3, viewW:I
    div-int/lit8 v0, v3, 0x14

    .line 1716
    .local v0, moveThreshold:I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4, v3}, Lcom/android/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v4

    add-int v2, v0, v4

    .line 1719
    .local v2, threshold:I
    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, v3, v4

    if-le v4, v2, :cond_1

    .line 1723
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 1731
    :goto_0
    return v4

    .line 1726
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v4

    goto :goto_0

    .line 1727
    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-le v4, v2, :cond_2

    .line 1728
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v5

    .line 1731
    goto :goto_0
.end method

.method private snapback()V
    .locals 1

    .prologue
    .line 1705
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_1

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 1706
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1707
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->snapback()V

    goto :goto_0
.end method

.method private swipeImages(FF)Z
    .locals 6
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1679
    iget-boolean v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x44bb8000

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 1701
    :cond_0
    :goto_0
    return v3

    .line 1683
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    .line 1684
    .local v0, controller:Lcom/android/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 1685
    .local v2, isMinimal:Z
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v1

    .line 1686
    .local v1, edges:I
    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1687
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_0

    .line 1693
    :cond_2
    const/high16 v4, -0x3cea

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    if-nez v2, :cond_3

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    .line 1695
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 1696
    :cond_4
    const/high16 v4, 0x4316

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    if-nez v2, :cond_5

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 1698
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private switchFocus()V
    .locals 1

    .prologue
    .line 1614
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    .line 1623
    :goto_0
    return-void

    .line 1615
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1617
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPrevImage()V

    goto :goto_0

    .line 1620
    :pswitch_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 1615
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private switchPosition()I
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 1628
    iget-object v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v10, v9}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1629
    .local v1, curr:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    .line 1631
    .local v0, center:I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-le v10, v0, :cond_0

    iget v10, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v10, :cond_0

    .line 1632
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v8, v7}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1633
    .local v5, prev:Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v0

    .line 1634
    .local v2, currDist:I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, v8

    .line 1635
    .local v6, prevDist:I
    if-ge v6, v2, :cond_1

    .line 1647
    .end local v2           #currDist:I
    .end local v5           #prev:Landroid/graphics/Rect;
    .end local v6           #prevDist:I
    :goto_0
    return v7

    .line 1638
    :cond_0
    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-ge v7, v0, :cond_1

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v7, :cond_1

    .line 1639
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 1640
    .local v3, next:Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v7

    .line 1641
    .restart local v2       #currDist:I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v0

    .line 1642
    .local v4, nextDist:I
    if-ge v4, v2, :cond_1

    move v7, v8

    .line 1643
    goto :goto_0

    .end local v2           #currDist:I
    .end local v3           #next:Landroid/graphics/Rect;
    .end local v4           #nextDist:I
    :cond_1
    move v7, v9

    .line 1647
    goto :goto_0
.end method

.method private switchToFirstImage()V
    .locals 2

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1787
    return-void
.end method

.method private switchToHitPicture(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1653
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_1

    .line 1654
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1655
    .local v0, r:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_1

    .line 1656
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    .line 1668
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 1661
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v1, :cond_0

    .line 1662
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1663
    .restart local v0       #r:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gt v1, p1, :cond_0

    .line 1664
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    goto :goto_0
.end method

.method private switchToNextImage()V
    .locals 2

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1768
    return-void
.end method

.method private switchToPrevImage()V
    .locals 4

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v0, :cond_0

    .line 1776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mLaunchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1777
    const-string v0, "PhotoView"

    const-string v1, "should not slider uninterruptedly "

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :goto_0
    return-void

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    goto :goto_0
.end method

.method private switchWithCaptureAnimationLocked(I)Z
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1813
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v3, :cond_0

    .line 1841
    :goto_0
    return v1

    .line 1814
    :cond_0
    if-ne p1, v1, :cond_3

    .line 1815
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 1817
    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1818
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 1819
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    .line 1838
    :goto_1
    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    .line 1839
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1840
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1820
    .end local v0           #m:Landroid/os/Message;
    :cond_3
    if-ne p1, v4, :cond_7

    .line 1821
    sget-boolean v3, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 1822
    :cond_4
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1827
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_6

    .line 1828
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 1829
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0

    .line 1833
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 1834
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 1836
    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1446
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    .line 1447
    .local v0, isCamera:Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v1, :cond_1

    .line 1449
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1452
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    goto :goto_0
.end method

.method private updateCameraRect()V
    .locals 12

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v6

    .line 550
    .local v6, w:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v1

    .line 551
    .local v1, h:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_0

    .line 552
    move v5, v6

    .line 553
    .local v5, tmp:I
    move v6, v1

    .line 554
    move v1, v5

    .line 556
    .end local v5           #tmp:I
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 557
    .local v2, l:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 558
    .local v4, t:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 559
    .local v3, r:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 562
    .local v0, b:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    sparse-switch v7, :sswitch_data_0

    .line 569
    :goto_0
    const-string v7, "PhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compensation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CameraRelativeFrame = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCameraRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void

    .line 563
    :sswitch_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 564
    :sswitch_1
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v1, v0

    sub-int v9, v1, v4

    invoke-virtual {v7, v8, v2, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 565
    :sswitch_2
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v1, v0

    sub-int v10, v6, v2

    sub-int v11, v1, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 566
    :sswitch_3
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v6, v2

    invoke-virtual {v7, v4, v8, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 562
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getFilmMode()Z
    .locals 1

    .prologue
    .line 1468
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method public notifyDataChange([III)V
    .locals 12
    .parameter "fromIndex"
    .parameter "prevBound"
    .parameter "nextBound"

    .prologue
    .line 429
    iput p2, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    .line 430
    iput p3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    .line 433
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 434
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 435
    .local v8, k:I
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 436
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v6, v0, :cond_0

    .line 437
    aget v0, p1, v6

    if-ne v0, v8, :cond_2

    .line 438
    add-int/lit8 v0, v6, -0x2

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 445
    .end local v6           #i:I
    .end local v8           #k:I
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 446
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 447
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 452
    :cond_1
    const/4 v6, -0x2

    .restart local v6       #i:I
    :goto_1
    const/4 v0, 0x2

    if-gt v6, v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 454
    .local v10, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v10}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    add-int/lit8 v1, v6, 0x2

    invoke-interface {v10}, Lcom/android/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/android/gallery3d/ui/PhotoView$Size;

    move-result-object v2

    aput-object v2, v0, v1

    .line 452
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 436
    .end local v10           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    .restart local v8       #k:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 458
    .end local v8           #k:I
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v11

    .line 461
    .local v11, wasDeleting:Z
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_4

    const/4 v2, 0x1

    :goto_2
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v1, :cond_5

    const/4 v3, 0x1

    :goto_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mSizes:[Lcom/android/gallery3d/ui/PhotoView$Size;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/PositionController;->moveBox([IZZZ[Lcom/android/gallery3d/ui/PhotoView$Size;)V

    .line 464
    const/4 v6, -0x2

    :goto_4
    const/4 v0, 0x2

    if-gt v6, v0, :cond_6

    .line 465
    invoke-direct {p0, v6}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 464
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 461
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 468
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v7

    .line 472
    .local v7, isDeleting:Z
    if-eqz v11, :cond_7

    if-nez v7, :cond_7

    .line 473
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 475
    .local v9, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 479
    .end local v9           #m:Landroid/os/Message;
    :cond_7
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 480
    return-void
.end method

.method public notifyImageChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 488
    if-nez p1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onCurrentImageUpdated()V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 492
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 493
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 494
    return-void
.end method

.method public notifyImageReady()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onImageReady()V

    .line 499
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x0

    .line 511
    sub-int v6, p4, p2

    .line 512
    .local v6, w:I
    sub-int v2, p5, p3

    .line 513
    .local v2, h:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 514
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 515
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v7, v9, v9}, Lcom/android/gallery3d/ui/GLView;->measure(II)V

    .line 516
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {v8}, Lcom/android/gallery3d/ui/GLView;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {v7, v9, v8, v6, v2}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 518
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v5

    .line 519
    .local v5, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getDisplayRotation()I

    move-result v1

    .line 520
    .local v1, displayRotation:I
    invoke-interface {v5}, Lcom/android/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    .line 521
    .local v0, compensation:I
    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    if-ne v7, v1, :cond_0

    iget v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    if-eq v7, v0, :cond_2

    .line 523
    :cond_0
    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 524
    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mCompensation:I

    .line 529
    const/4 v3, -0x2

    .local v3, i:I
    :goto_0
    const/4 v7, 0x2

    if-gt v3, v7, :cond_2

    .line 530
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v7, v3}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/ui/PhotoView$Picture;

    .line 531
    .local v4, p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 532
    invoke-interface {v4}, Lcom/android/gallery3d/ui/PhotoView$Picture;->forceSize()V

    .line 529
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 537
    .end local v3           #i:I
    .end local v4           #p:Lcom/android/gallery3d/ui/PhotoView$Picture;
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 538
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/android/gallery3d/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    .line 539
    if-eqz p1, :cond_3

    .line 540
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/gallery3d/ui/PositionController;->setViewSize(II)V

    .line 542
    :cond_3
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/android/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1058
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1476
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionController;->skipAnimation()V

    .line 1477
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/TileImageView;->freeTextures()V

    .line 1478
    const/4 v0, -0x2

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 1479
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/PhotoView$Picture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$Picture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 1478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1481
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 1482
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1561
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v8}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v6}, Lcom/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v7

    .line 1564
    .local v0, full:Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eq v0, v6, :cond_0

    .line 1565
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    .line 1566
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v6, v0}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(Z)V

    .line 1567
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1572
    :cond_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eqz v6, :cond_2

    .line 1573
    const/4 v4, 0x0

    .line 1588
    .local v4, neighbors:I
    :goto_1
    move v1, v4

    .local v1, i:I
    :goto_2
    neg-int v6, v4

    if-lt v1, v6, :cond_6

    .line 1589
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1590
    .local v5, r:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPictures:Lcom/android/gallery3d/util/RangeArray;

    invoke-virtual {v6, v1}, Lcom/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v6, p1, v5}, Lcom/android/gallery3d/ui/PhotoView$Picture;->draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1588
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v0           #full:Z
    .end local v1           #i:I
    .end local v4           #neighbors:I
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_1
    move v0, v8

    .line 1561
    goto :goto_0

    .line 1577
    .restart local v0       #full:Z
    :cond_2
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v6

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-nez v6, :cond_3

    move v3, v7

    .line 1578
    .local v3, inPageMode:Z
    :goto_3
    iget v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v2, v7

    .line 1580
    .local v2, inCaptureAnimation:Z
    :goto_4
    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 1581
    const/4 v4, 0x1

    .restart local v4       #neighbors:I
    goto :goto_1

    .end local v2           #inCaptureAnimation:Z
    .end local v3           #inPageMode:Z
    .end local v4           #neighbors:I
    :cond_3
    move v3, v8

    .line 1577
    goto :goto_3

    .restart local v3       #inPageMode:Z
    :cond_4
    move v2, v8

    .line 1578
    goto :goto_4

    .line 1583
    .restart local v2       #inCaptureAnimation:Z
    :cond_5
    const/4 v4, 0x2

    .restart local v4       #neighbors:I
    goto :goto_1

    .line 1593
    .end local v2           #inCaptureAnimation:Z
    .end local v3           #inPageMode:Z
    .restart local v1       #i:I
    :cond_6
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mEdgeView:Lcom/android/gallery3d/ui/EdgeView;

    invoke-virtual {p0, p1, v6}, Lcom/android/gallery3d/ui/GLView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1594
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mUndoBar:Lcom/android/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, p1, v6}, Lcom/android/gallery3d/ui/GLView;->renderChild(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/GLView;)V

    .line 1595
    iget-object v6, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/PositionController;->advanceAnimation()V

    .line 1596
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->checkFocusSwitching()V

    .line 1597
    return-void
.end method

.method public resetToFirstPicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1491
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1492
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1493
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 1486
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->skipToFinalPosition()V

    .line 1487
    return-void
.end method

.method public setFilmMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1457
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-ne v0, p1, :cond_0

    .line 1465
    :goto_0
    return-void

    .line 1458
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 1459
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/PositionController;->setFilmMode(Z)V

    .line 1460
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->setNeedFullImage(Z)V

    .line 1461
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->setFocusHintDirection(I)V

    .line 1463
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateActionBar()V

    .line 1464
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$Listener;->onFilmModeChanged(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1460
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1461
    goto :goto_2
.end method

.method public setLaunchTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 1758
    iput-wide p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mLaunchTime:J

    .line 1759
    return-void
.end method

.method public setListener(Lcom/android/gallery3d/ui/PhotoView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;

    .line 1960
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/ui/PhotoView$Model;Lcom/android/gallery3d/ui/PhotoView$Model;)V
    .locals 2
    .parameter "model"
    .parameter "sgmodel"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    .line 345
    iput-object p2, p0, Lcom/android/gallery3d/ui/PhotoView;->mSgModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V

    .line 347
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureListener:Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    .line 1443
    return-void
.end method

.method public setWantPictureCenterCallbacks(Z)V
    .locals 0
    .parameter "wanted"

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 422
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PositionController;->stopScrolling()V

    .line 341
    return-void
.end method

.method public switchToImage(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 1764
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 1803
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1808
    :goto_0
    return v1

    .line 1804
    :cond_0
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 1806
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->switchWithCaptureAnimationLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1808
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
