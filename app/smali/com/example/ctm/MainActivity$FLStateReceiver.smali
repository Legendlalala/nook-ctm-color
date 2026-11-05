.class public Lcom/example/ctm/MainActivity$FLStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/ctm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FLStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/ctm/MainActivity;


# direct methods
.method public constructor <init>(Lcom/example/ctm/MainActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/example/ctm/MainActivity$FLStateReceiver;->this$0:Lcom/example/ctm/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.FL_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "FL_STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "fl_state":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const-string v1, "CTM"

    const-string v2, "FL ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/example/ctm/MainActivity$FLStateReceiver;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v1}, Lcom/example/ctm/MainActivity;->access$000(Lcom/example/ctm/MainActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    iget-object v1, p0, Lcom/example/ctm/MainActivity$FLStateReceiver;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v1, v4}, Lcom/example/ctm/MainActivity;->setEnabledFrontLightItems(Z)V

    .line 99
    iget-object v1, p0, Lcom/example/ctm/MainActivity$FLStateReceiver;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_light_mode"

    invoke-static {v1, v2, v4}, Lcom/example/ctm/SafeHelper;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    iget-object v1, p0, Lcom/example/ctm/MainActivity$FLStateReceiver;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v1}, Lcom/example/ctm/MainActivity;->access$200(Lcom/example/ctm/MainActivity;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/example/ctm/MainActivity$FLStateReceiver;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$100(Lcom/example/ctm/MainActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/example/ctm/SafeHelper;->setBacklightBrightness(Landroid/os/PowerManager;I)V

    .line 108
    .end local v0    # "fl_state":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v0    # "fl_state":Ljava/lang/String;
    :cond_1
    const-string v1, "CTM"

    const-string v2, "FL OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/example/ctm/MainActivity$FLStateReceiver;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v1}, Lcom/example/ctm/MainActivity;->access$000(Lcom/example/ctm/MainActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 104
    iget-object v1, p0, Lcom/example/ctm/MainActivity$FLStateReceiver;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v1, v3}, Lcom/example/ctm/MainActivity;->setEnabledFrontLightItems(Z)V

    .line 105
    iget-object v1, p0, Lcom/example/ctm/MainActivity$FLStateReceiver;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_light_mode"

    invoke-static {v1, v2, v3}, Lcom/example/ctm/SafeHelper;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
