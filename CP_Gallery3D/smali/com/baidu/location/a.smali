.class Lcom/baidu/location/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/a$a;
    }
.end annotation


# static fields
.field private static if:Ljava/lang/String;


# instance fields
.field private a:Z

.field private do:Ljava/util/ArrayList;

.field private for:Z

.field private int:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "baidu_location_service"

    sput-object v0, Lcom/baidu/location/a;->if:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/baidu/location/a;->int:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/baidu/location/a;->for:Z

    iput-boolean v0, p0, Lcom/baidu/location/a;->a:Z

    iput-object p1, p0, Lcom/baidu/location/a;->int:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a$a;

    iget-object v3, v0, Lcom/baidu/location/a$a;->do:Landroid/os/Messenger;

    invoke-virtual {v3, p1}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a$a;

    iget-object v0, v0, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->int:Ljava/lang/String;

    const-string v3, "kuikedefancaiburudashahaochi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/location/a;->a:Z

    if-eq v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/baidu/location/a;->a:Z

    iget-object v0, p0, Lcom/baidu/location/a;->int:Landroid/os/Handler;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/baidu/location/a$a;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/baidu/location/a$a;->do:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/baidu/location/a$a;->a(Lcom/baidu/location/a$a;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/location/a;->if:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/baidu/location/a$a;->for:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    invoke-static {p1, v0}, Lcom/baidu/location/a$a;->a(Lcom/baidu/location/a$a;I)V

    goto :goto_0
.end method

.method private do()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/a;->int()V

    invoke-direct {p0}, Lcom/baidu/location/a;->a()V

    invoke-virtual {p0}, Lcom/baidu/location/a;->new()V

    return-void
.end method

.method private int()V
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a$a;

    iget-object v5, v0, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->byte:Z

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    iget-object v0, v0, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->long:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    sput-boolean v1, Lcom/baidu/location/j;->char:Z

    iget-boolean v0, p0, Lcom/baidu/location/a;->for:Z

    if-eq v0, v2, :cond_2

    iput-boolean v2, p0, Lcom/baidu/location/a;->for:Z

    iget-object v0, p0, Lcom/baidu/location/a;->int:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/os/Message;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/baidu/location/a;->if:Ljava/lang/String;

    const-string v2, "invalid Poirequest"

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "num"

    iget-object v4, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->a:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/baidu/location/LocationClientOption;->a:I

    iget-object v0, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "distance"

    iget-object v4, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->do:F

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/baidu/location/LocationClientOption;->do:F

    iget-object v0, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extraInfo"

    iget-object v4, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget-boolean v4, v4, Lcom/baidu/location/LocationClientOption;->if:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/location/LocationClientOption;->if:Z

    iget-object v0, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iput-boolean v5, v0, Lcom/baidu/location/LocationClientOption;->char:Z

    const-string v0, "&poi=%.1f|%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->do:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget v3, v3, Lcom/baidu/location/LocationClientOption;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->if:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a$a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/a$a;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a$a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/location/a$a;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/baidu/location/a$a;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/baidu/location/a;->if:Ljava/lang/String;

    const-string v1, "not found the client messener..."

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public do(Landroid/os/Message;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget v0, v0, Lcom/baidu/location/LocationClientOption;->else:I

    goto :goto_0
.end method

.method public for(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/location/a;->if:Ljava/lang/String;

    const-string v1, "invalid regist client"

    invoke-static {v0, v1}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/baidu/location/a$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/location/a$a;-><init>(Lcom/baidu/location/a;Landroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/baidu/location/a;->a(Lcom/baidu/location/a$a;)V

    invoke-direct {p0}, Lcom/baidu/location/a;->do()V

    goto :goto_0
.end method

.method public for()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/a;->for:Z

    return v0
.end method

.method public if()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a$a;

    invoke-virtual {v0}, Lcom/baidu/location/a$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public if(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/baidu/location/a;->if:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/baidu/location/a$a;->for:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unregistered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/location/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/baidu/location/a;->do()V

    return-void
.end method

.method public if(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a$a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/a$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public int(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/a$a;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "scanSpan"

    iget-object v4, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->for:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/baidu/location/LocationClientOption;->for:I

    iget-object v0, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "openGPS"

    iget-object v4, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget-boolean v4, v4, Lcom/baidu/location/LocationClientOption;->byte:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/location/LocationClientOption;->byte:Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "coorType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    iput-object v0, v2, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "addrType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    iput-object v0, v2, Lcom/baidu/location/LocationClientOption;->case:Ljava/lang/String;

    iget-object v0, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "timeOut"

    iget-object v4, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->goto:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/baidu/location/LocationClientOption;->goto:I

    iget-object v0, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "location_change_notify"

    iget-object v1, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->long:Z

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/baidu/location/LocationClientOption;->long:Z

    invoke-direct {p0}, Lcom/baidu/location/a;->do()V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->new:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->case:Ljava/lang/String;

    goto :goto_2
.end method

.method public new()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a$a;

    invoke-virtual {v0}, Lcom/baidu/location/a$a;->if()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public try()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Lcom/baidu/location/a;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a$a;

    iget-object v3, v0, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget-object v3, v3, Lcom/baidu/location/LocationClientOption;->int:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/baidu/location/a$a;->if:Lcom/baidu/location/LocationClientOption;

    iget-object v3, v3, Lcom/baidu/location/LocationClientOption;->int:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v3, v0, Lcom/baidu/location/a$a;->for:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/baidu/location/a$a;->for:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&prod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
