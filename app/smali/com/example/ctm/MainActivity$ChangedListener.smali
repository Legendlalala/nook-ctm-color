.class Lcom/example/ctm/MainActivity$ChangedListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/ctm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangedListener"
.end annotation


# instance fields
.field private refreshRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/example/ctm/MainActivity;


# direct methods
.method private constructor <init>(Lcom/example/ctm/MainActivity;)V
    .locals 1

    .prologue
    .line 515
    iput-object p1, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    new-instance v0, Lcom/example/ctm/MainActivity$ChangedListener$3;

    invoke-direct {v0, p0}, Lcom/example/ctm/MainActivity$ChangedListener$3;-><init>(Lcom/example/ctm/MainActivity$ChangedListener;)V

    iput-object v0, p0, Lcom/example/ctm/MainActivity$ChangedListener;->refreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/example/ctm/MainActivity;Lcom/example/ctm/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/example/ctm/MainActivity;
    .param p2, "x1"    # Lcom/example/ctm/MainActivity$1;

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/example/ctm/MainActivity$ChangedListener;-><init>(Lcom/example/ctm/MainActivity;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/example/ctm/MainActivity$ChangedListener;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity$ChangedListener;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/example/ctm/MainActivity$ChangedListener;->refreshRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 519
    const/4 v1, 0x0

    .line 520
    .local v1, "value":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v3}, Lcom/example/ctm/MainActivity;->access$500(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 521
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {}, Lcom/example/ctm/MainActivity;->access$600()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {v2, v3}, Lcom/example/ctm/MainActivity;->access$402(Lcom/example/ctm/MainActivity;I)I

    .line 522
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$200(Lcom/example/ctm/MainActivity;)Landroid/os/PowerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v3}, Lcom/example/ctm/MainActivity;->access$400(Lcom/example/ctm/MainActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/example/ctm/SafeHelper;->setFrontlightBrightnessColor(Landroid/os/PowerManager;I)V

    .line 523
    const-string v2, "CTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFrontlightBrightnessColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v4}, Lcom/example/ctm/MainActivity;->access$400(Lcom/example/ctm/MainActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    mul-int/lit8 v2, p2, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 525
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$1300(Lcom/example/ctm/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%4d%%"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v3}, Lcom/example/ctm/MainActivity;->access$700(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 527
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {}, Lcom/example/ctm/MainActivity;->access$800()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {v2, v3}, Lcom/example/ctm/MainActivity;->access$102(Lcom/example/ctm/MainActivity;I)I

    .line 528
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$200(Lcom/example/ctm/MainActivity;)Landroid/os/PowerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v3}, Lcom/example/ctm/MainActivity;->access$100(Lcom/example/ctm/MainActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/example/ctm/SafeHelper;->setBacklightBrightness(Landroid/os/PowerManager;I)V

    .line 529
    const-string v2, "CTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBacklightBrightness:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v4}, Lcom/example/ctm/MainActivity;->access$100(Lcom/example/ctm/MainActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    mul-int/lit8 v2, p2, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 531
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$1400(Lcom/example/ctm/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%4d%%"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 532
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v3}, Lcom/example/ctm/MainActivity;->access$900(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 533
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {}, Lcom/example/ctm/MainActivity;->access$1000()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {v2, v3}, Lcom/example/ctm/MainActivity;->access$1502(Lcom/example/ctm/MainActivity;I)I

    .line 534
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$1500(Lcom/example/ctm/MainActivity;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/lit8 v1, v2, 0xa

    .line 535
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$1500(Lcom/example/ctm/MainActivity;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/example/ctm/SafeHelper;->setGamma(F)V

    .line 536
    const-string v2, "CTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setGamma:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v4}, Lcom/example/ctm/MainActivity;->access$1500(Lcom/example/ctm/MainActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$1600(Lcom/example/ctm/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%4d%%"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    new-instance v0, Lcom/example/ctm/MainActivity$ChangedListener$1;

    invoke-direct {v0, p0}, Lcom/example/ctm/MainActivity$ChangedListener$1;-><init>(Lcom/example/ctm/MainActivity$ChangedListener;)V

    .line 557
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 558
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$1600(Lcom/example/ctm/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%4d%%"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 559
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v3}, Lcom/example/ctm/MainActivity;->access$1100(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 560
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {}, Lcom/example/ctm/MainActivity;->access$1200()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {v2, v3}, Lcom/example/ctm/MainActivity;->access$1902(Lcom/example/ctm/MainActivity;I)I

    .line 562
    new-instance v0, Lcom/example/ctm/MainActivity$ChangedListener$2;

    invoke-direct {v0, p0}, Lcom/example/ctm/MainActivity$ChangedListener$2;-><init>(Lcom/example/ctm/MainActivity$ChangedListener;)V

    .line 580
    .restart local v0    # "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 581
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$2000(Lcom/example/ctm/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%4d"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v5}, Lcom/example/ctm/MainActivity;->access$1900(Lcom/example/ctm/MainActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v2}, Lcom/example/ctm/MainActivity;->SaveWhitenessToSystem()V

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 597
    const-string v0, "CTM"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 601
    const-string v2, "CTM"

    const-string v3, "Stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "progress":I
    const/4 v1, 0x0

    .line 604
    .local v1, "value":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v3}, Lcom/example/ctm/MainActivity;->access$500(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 605
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$500(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 606
    invoke-static {}, Lcom/example/ctm/MainActivity;->access$600()[I

    move-result-object v2

    aget v1, v2, v0

    .line 607
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2, v1}, Lcom/example/ctm/MainActivity;->access$402(Lcom/example/ctm/MainActivity;I)I

    .line 608
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_color"

    iget-object v4, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v4}, Lcom/example/ctm/MainActivity;->access$400(Lcom/example/ctm/MainActivity;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/example/ctm/SafeHelper;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    const-string v2, "CTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCREEN_BRIGHTNESS_COLOR:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v4}, Lcom/example/ctm/MainActivity;->access$400(Lcom/example/ctm/MainActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v3}, Lcom/example/ctm/MainActivity;->access$700(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 612
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$700(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 613
    invoke-static {}, Lcom/example/ctm/MainActivity;->access$800()[I

    move-result-object v2

    aget v1, v2, v0

    .line 614
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2, v1}, Lcom/example/ctm/MainActivity;->access$102(Lcom/example/ctm/MainActivity;I)I

    .line 615
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget-object v4, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v4}, Lcom/example/ctm/MainActivity;->access$100(Lcom/example/ctm/MainActivity;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/example/ctm/SafeHelper;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    const-string v2, "CTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCREEN_BRIGHTNESS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v4}, Lcom/example/ctm/MainActivity;->access$100(Lcom/example/ctm/MainActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v3}, Lcom/example/ctm/MainActivity;->access$900(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 619
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$900(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 620
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {}, Lcom/example/ctm/MainActivity;->access$1000()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-static {v2, v3}, Lcom/example/ctm/MainActivity;->access$1502(Lcom/example/ctm/MainActivity;I)I

    .line 622
    :try_start_0
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gamma_correction"

    iget-object v4, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v4}, Lcom/example/ctm/MainActivity;->access$1500(Lcom/example/ctm/MainActivity;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/example/ctm/SafeHelper;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$1500(Lcom/example/ctm/MainActivity;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/example/ctm/SafeHelper;->setGamma(F)V

    .line 625
    const-string v2, "CTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GAMMA_CORRECTION:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v4}, Lcom/example/ctm/MainActivity;->access$1500(Lcom/example/ctm/MainActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 626
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 628
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v3}, Lcom/example/ctm/MainActivity;->access$1100(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 629
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v2}, Lcom/example/ctm/MainActivity;->access$1100(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 630
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {}, Lcom/example/ctm/MainActivity;->access$1200()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-static {v2, v3}, Lcom/example/ctm/MainActivity;->access$1902(Lcom/example/ctm/MainActivity;I)I

    .line 632
    :try_start_1
    const-string v2, "CTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHITENESS_ADJUSTMENT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-static {v4}, Lcom/example/ctm/MainActivity;->access$1900(Lcom/example/ctm/MainActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v2, p0, Lcom/example/ctm/MainActivity$ChangedListener;->this$0:Lcom/example/ctm/MainActivity;

    invoke-virtual {v2}, Lcom/example/ctm/MainActivity;->SaveWhitenessToSystem()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 634
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method
