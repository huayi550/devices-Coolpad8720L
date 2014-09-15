.class Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIsSecure:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field private final mMoveToSecure:Z

.field private final mOperation:I

.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 0
    .parameter
    .parameter "operation"
    .parameter
    .parameter "listener"
    .parameter "isSecure"
    .parameter "isMoveToSecure"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 1039
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iput p2, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    .line 1041
    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    .line 1042
    iput-object p4, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 1043
    iput-boolean p5, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mIsSecure:Z

    .line 1044
    iput-boolean p6, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mMoveToSecure:Z

    .line 1045
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1031
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 9
    .parameter "jc"

    .prologue
    .line 1049
    const/4 v2, 0x0

    .line 1050
    .local v2, index:I
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/android/gallery3d/ui/MenuExecutor;->access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 1051
    .local v3, manager:Lcom/android/gallery3d/data/DataManager;
    const/4 v4, 0x1

    .line 1053
    .local v4, result:I
    :try_start_0
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressStart(Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v6, v7}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1100(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 1054
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    .line 1055
    .local v1, id:Lcom/android/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1056
    const/4 v4, 0x3

    .line 1064
    .end local v1           #id:Lcom/android/gallery3d/data/Path;
    :cond_0
    iget-boolean v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mMoveToSecure:Z

    if-eqz v6, :cond_1

    .line 1065
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/gallery3d/ui/MenuExecutor;->access$600(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation$1;

    invoke-direct {v7, p0}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :cond_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v6, v4, v7}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1400(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 1079
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    const/4 v6, 0x0

    return-object v6

    .line 1059
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #id:Lcom/android/gallery3d/data/Path;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    invoke-static {v6, v3, p1, v7, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1200(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1060
    const/4 v4, 0x2

    .line 1062
    :cond_3
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    add-int/lit8 v2, v2, 0x1

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v6, v2, v7}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1300(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1073
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Lcom/android/gallery3d/data/Path;
    :catch_0
    move-exception v5

    .line 1074
    .local v5, th:Ljava/lang/Throwable;
    :try_start_2
    const-string v6, "MenuExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to execute operation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1077
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v6, v4, v7}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1400(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_1

    .end local v5           #th:Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v7, v4, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->access$1400(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    throw v6
.end method
