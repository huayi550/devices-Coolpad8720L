.class Landroid/net/CaptivePortalTracker$NoActiveNetworkState;
.super Lcom/android/internal/util/State;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoActiveNetworkState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v1, 0x0

    #setter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0, v1}, Landroid/net/CaptivePortalTracker;->access$1102(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 193
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v1, 0x0

    #calls: Landroid/net/CaptivePortalTracker;->setNotificationVisible(Z)V
    invoke-static {v0, v1}, Landroid/net/CaptivePortalTracker;->access$1200(Landroid/net/CaptivePortalTracker;Z)V

    .line 194
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 198
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/CaptivePortalTracker;->access$1300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 201
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 210
    const/4 v1, 0x0

    .line 212
    :goto_0
    return v1

    .line 203
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 204
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    #calls: Landroid/net/CaptivePortalTracker;->isActiveNetwork(Landroid/net/NetworkInfo;)Z
    invoke-static {v1, v0}, Landroid/net/CaptivePortalTracker;->access$1400(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    #setter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1, v0}, Landroid/net/CaptivePortalTracker;->access$1102(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 206
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/CaptivePortalTracker;->access$1500(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/CaptivePortalTracker;->access$1600(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V

    .line 212
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
