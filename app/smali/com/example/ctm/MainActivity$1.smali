.class Lcom/example/ctm/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/ctm/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/ctm/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/ctm/MainActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/example/ctm/MainActivity$1;->this$0:Lcom/example/ctm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "value":I
    if-eqz p2, :cond_0

    .line 249
    const-string v1, "CTM"

    const-string v2, "check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lcom/example/ctm/MainActivity$1;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v1, v4}, Lcom/example/ctm/MainActivity;->setEnabledFrontLightItems(Z)V

    .line 251
    iget-object v1, p0, Lcom/example/ctm/MainActivity$1;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_light_mode"

    invoke-static {v1, v2, v4}, Lcom/example/ctm/SafeHelper;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    iget-object v1, p0, Lcom/example/ctm/MainActivity$1;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v1}, Lcom/example/ctm/MainActivity;->access$200(Lcom/example/ctm/MainActivity;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/example/ctm/MainActivity$1;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$100(Lcom/example/ctm/MainActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/example/ctm/SafeHelper;->setBacklightBrightness(Landroid/os/PowerManager;I)V

    .line 253
    iget-object v1, p0, Lcom/example/ctm/MainActivity$1;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v1}, Lcom/example/ctm/MainActivity;->access$200(Lcom/example/ctm/MainActivity;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/example/ctm/MainActivity$1;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$400(Lcom/example/ctm/MainActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/example/ctm/SafeHelper;->setFrontlightBrightnessColor(Landroid/os/PowerManager;I)V

    .line 254
    iget-object v1, p0, Lcom/example/ctm/MainActivity$1;->this$0:Lcom/example/ctm/MainActivity;

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Lcom/example/ctm/MainActivity;->sendFLChangedBroadcast(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/example/ctm/MainActivity$1;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v1, v3}, Lcom/example/ctm/MainActivity;->setEnabledFrontLightItems(Z)V

    .line 257
    iget-object v1, p0, Lcom/example/ctm/MainActivity$1;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_light_mode"

    invoke-static {v1, v2, v3}, Lcom/example/ctm/SafeHelper;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    iget-object v1, p0, Lcom/example/ctm/MainActivity$1;->this$0:Lcom/example/ctm/MainActivity;

    const-string v2, "OFF"

    invoke-virtual {v1, v2}, Lcom/example/ctm/MainActivity;->sendFLChangedBroadcast(Ljava/lang/String;)V

    goto :goto_0
.end method
