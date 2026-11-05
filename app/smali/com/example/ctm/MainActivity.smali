.class public Lcom/example/ctm/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/ctm/MainActivity$ChangedListener;,
        Lcom/example/ctm/MainActivity$FLStateReceiver;
    }
.end annotation


# static fields
.field private static BRIGHTNESS_LEVELS:[I

.field private static COLOUR_LEVELS:[I

.field private static GAMMA_LEVELS:[I

.field private static WHITENESS_LEVELS:[I


# instance fields
.field private mBrightnessDecreaseButton:Landroid/view/View;

.field private mBrightnessIncreaseButton:Landroid/view/View;

.field private mBrightnessLinearLayout:Landroid/widget/LinearLayout;

.field private mBrightnessValueTextView:Landroid/widget/TextView;

.field private mColourDecreaseButton:Landroid/view/View;

.field private mColourIncreaseButton:Landroid/view/View;

.field private mColourLinearLayout:Landroid/widget/LinearLayout;

.field private mColourValueTextView:Landroid/widget/TextView;

.field private mFrontLightLinearLayout:Landroid/widget/LinearLayout;

.field private mGammaDecreaseButton:Landroid/view/View;

.field private mGammaImageLinearLayout:Landroid/widget/LinearLayout;

.field private mGammaIncreaseButton:Landroid/view/View;

.field private mGammaValueTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsColourAvailable:Z

.field private mPm:Landroid/os/PowerManager;

.field private mReceiver:Lcom/example/ctm/MainActivity$FLStateReceiver;

.field private mSeekbarBrightness:Landroid/widget/SeekBar;

.field private mSeekbarBrightnessColor:Landroid/widget/SeekBar;

.field private mSeekbarBrightnessColorValue:Landroid/widget/TextView;

.field private mSeekbarBrightnessValue:Landroid/widget/TextView;

.field private mSeekbarGamma:Landroid/widget/SeekBar;

.field private mSeekbarWhiteness:Landroid/widget/SeekBar;

.field private mSwitch:Landroid/widget/Switch;

.field private mWhitenessDecreaseButton:Landroid/view/View;

.field private mWhitenessIncreaseButton:Landroid/view/View;

.field private mWhitenessValueTextView:Landroid/widget/TextView;

.field private mainLayout:Landroid/widget/LinearLayout;

.field private nGamma:I

.field private nWhiteness:I

.field private nbrightness:I

.field private nbrightnessColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/example/ctm/MainActivity;->COLOUR_LEVELS:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/example/ctm/MainActivity;->BRIGHTNESS_LEVELS:[I

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/example/ctm/MainActivity;->GAMMA_LEVELS:[I

    .line 62
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/example/ctm/MainActivity;->WHITENESS_LEVELS:[I

    return-void

    .line 59
    nop

    :array_0
    .array-data 4
        0x64
        0x5a
        0x50
        0x46
        0x3c
        0x32
        0x28
        0x1e
        0x14
        0xa
        0x0
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x5
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data

    .line 61
    :array_2
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data

    .line 62
    :array_3
    .array-data 4
        0xff
        0xfa
        0xf5
        0xf0
        0xeb
        0xe6
        0xe1
        0xdc
        0xd7
        0xd2
        0xcd
        0xc8
        0xc3
        0xbe
        0xb9
        0xb4
        0xaf
        0xaa
        0xa5
        0xa0
        0x9b
        0x96
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightnessColor:Landroid/widget/SeekBar;

    .line 33
    iput-object v1, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightness:Landroid/widget/SeekBar;

    .line 34
    iput-object v1, p0, Lcom/example/ctm/MainActivity;->mSeekbarGamma:Landroid/widget/SeekBar;

    .line 35
    iput-object v1, p0, Lcom/example/ctm/MainActivity;->mSeekbarWhiteness:Landroid/widget/SeekBar;

    .line 36
    iput-object v1, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightnessColorValue:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightnessValue:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/example/ctm/MainActivity;->mSwitch:Landroid/widget/Switch;

    .line 41
    iput-object v1, p0, Lcom/example/ctm/MainActivity;->mReceiver:Lcom/example/ctm/MainActivity$FLStateReceiver;

    .line 44
    iput v2, p0, Lcom/example/ctm/MainActivity;->nbrightnessColor:I

    .line 45
    iput v2, p0, Lcom/example/ctm/MainActivity;->nbrightness:I

    .line 46
    iput v2, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    .line 47
    const/16 v0, 0xff

    iput v0, p0, Lcom/example/ctm/MainActivity;->nWhiteness:I

    .line 49
    iput-boolean v2, p0, Lcom/example/ctm/MainActivity;->mIsColourAvailable:Z

    .line 83
    iput-object v1, p0, Lcom/example/ctm/MainActivity;->mHandler:Landroid/os/Handler;

    .line 515
    return-void
.end method

.method static synthetic access$000(Lcom/example/ctm/MainActivity;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/ctm/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget v0, p0, Lcom/example/ctm/MainActivity;->nbrightness:I

    return v0
.end method

.method static synthetic access$1000()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/example/ctm/MainActivity;->GAMMA_LEVELS:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/example/ctm/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/example/ctm/MainActivity;->nbrightness:I

    return p1
.end method

.method static synthetic access$1100(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mSeekbarWhiteness:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1200()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/example/ctm/MainActivity;->WHITENESS_LEVELS:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/example/ctm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mColourValueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/example/ctm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mBrightnessValueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/example/ctm/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget v0, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    return v0
.end method

.method static synthetic access$1502(Lcom/example/ctm/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    return p1
.end method

.method static synthetic access$1600(Lcom/example/ctm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mGammaValueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/example/ctm/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/example/ctm/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget v0, p0, Lcom/example/ctm/MainActivity;->nWhiteness:I

    return v0
.end method

.method static synthetic access$1902(Lcom/example/ctm/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/example/ctm/MainActivity;->nWhiteness:I

    return p1
.end method

.method static synthetic access$200(Lcom/example/ctm/MainActivity;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mPm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/example/ctm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mWhitenessValueTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/example/ctm/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/example/ctm/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget v0, p0, Lcom/example/ctm/MainActivity;->nbrightnessColor:I

    return v0
.end method

.method static synthetic access$402(Lcom/example/ctm/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/example/ctm/MainActivity;->nbrightnessColor:I

    return p1
.end method

.method static synthetic access$500(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightnessColor:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/example/ctm/MainActivity;->COLOUR_LEVELS:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightness:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/example/ctm/MainActivity;->BRIGHTNESS_LEVELS:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/example/ctm/MainActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/example/ctm/MainActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mSeekbarGamma:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public SaveBrightnessColorToSystem()V
    .locals 5

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "value":I
    const/4 v0, 0x0

    .line 173
    .local v0, "progress":I
    iget-object v2, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightnessColor:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 174
    sget-object v2, Lcom/example/ctm/MainActivity;->COLOUR_LEVELS:[I

    aget v1, v2, v0

    .line 175
    iput v1, p0, Lcom/example/ctm/MainActivity;->nbrightnessColor:I

    .line 176
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_color"

    iget v4, p0, Lcom/example/ctm/MainActivity;->nbrightnessColor:I

    invoke-static {v2, v3, v4}, Lcom/example/ctm/SafeHelper;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    const-string v2, "CTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SaveBrightnessColor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/example/ctm/MainActivity;->nbrightnessColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public SaveBrightnessToSystem()V
    .locals 5

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "value":I
    const/4 v0, 0x0

    .line 162
    .local v0, "progress":I
    iget-object v2, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightness:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 163
    sget-object v2, Lcom/example/ctm/MainActivity;->BRIGHTNESS_LEVELS:[I

    aget v1, v2, v0

    .line 164
    iput v1, p0, Lcom/example/ctm/MainActivity;->nbrightness:I

    .line 165
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    iget v4, p0, Lcom/example/ctm/MainActivity;->nbrightness:I

    invoke-static {v2, v3, v4}, Lcom/example/ctm/SafeHelper;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    const-string v2, "CTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SaveBrightness:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/example/ctm/MainActivity;->nbrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public SaveGammaToSystem()V
    .locals 5

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "value":I
    const/4 v0, 0x0

    .line 184
    .local v0, "progress":I
    iget-object v2, p0, Lcom/example/ctm/MainActivity;->mSeekbarGamma:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 185
    sget-object v2, Lcom/example/ctm/MainActivity;->GAMMA_LEVELS:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gamma_correction"

    iget v4, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    invoke-static {v2, v3, v4}, Lcom/example/ctm/SafeHelper;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    iget v2, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/example/ctm/SafeHelper;->setGamma(F)V

    .line 190
    const-string v2, "CTM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SaveGamma:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public SaveWhitenessToSystem()V
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "progress":I
    iget-object v1, p0, Lcom/example/ctm/MainActivity;->mSeekbarWhiteness:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 198
    sget-object v1, Lcom/example/ctm/MainActivity;->WHITENESS_LEVELS:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/example/ctm/MainActivity;->nWhiteness:I

    .line 201
    :try_start_0
    const-string v1, "persist.sys.whiteness_threshold"

    iget v2, p0, Lcom/example/ctm/MainActivity;->nWhiteness:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/example/ctm/SafeHelper;->SystemProperties_set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/example/ctm/MainActivity;->mGammaImageLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getBrightnessColourLevel(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 477
    const/4 v2, 0x0

    .line 478
    .local v2, "level":I
    const/4 v0, 0x0

    .line 479
    .local v0, "colourLevel":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/example/ctm/MainActivity;->COLOUR_LEVELS:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 480
    sget-object v3, Lcom/example/ctm/MainActivity;->COLOUR_LEVELS:[I

    aget v0, v3, v1

    .line 481
    if-lt p1, v0, :cond_1

    .line 482
    move v2, v1

    .line 486
    :cond_0
    return v2

    .line 479
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBrightnessLevel(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 464
    const/4 v2, 0x0

    .line 465
    .local v2, "level":I
    const/4 v0, 0x0

    .line 466
    .local v0, "brightnessLevel":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/example/ctm/MainActivity;->BRIGHTNESS_LEVELS:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 467
    sget-object v3, Lcom/example/ctm/MainActivity;->BRIGHTNESS_LEVELS:[I

    aget v0, v3, v1

    .line 468
    if-gt p1, v0, :cond_1

    .line 469
    move v2, v1

    .line 473
    :cond_0
    return v2

    .line 466
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getGammaLevel(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 490
    const/4 v2, 0x0

    .line 491
    .local v2, "level":I
    const/4 v0, 0x0

    .line 492
    .local v0, "gammaLevel":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/example/ctm/MainActivity;->GAMMA_LEVELS:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 493
    sget-object v3, Lcom/example/ctm/MainActivity;->GAMMA_LEVELS:[I

    aget v0, v3, v1

    .line 494
    if-gt p1, v0, :cond_1

    .line 495
    move v2, v1

    .line 499
    :cond_0
    return v2

    .line 492
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getWhitenessLevel(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, "level":I
    const/4 v2, 0x0

    .line 505
    .local v2, "whitenessLevel":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/example/ctm/MainActivity;->WHITENESS_LEVELS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 506
    sget-object v3, Lcom/example/ctm/MainActivity;->WHITENESS_LEVELS:[I

    aget v2, v3, v0

    .line 507
    if-lt p1, v2, :cond_1

    .line 508
    move v1, v0

    .line 512
    :cond_0
    return v1

    .line 505
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/16 v8, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    const-string v5, "CTM"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 221
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mHandler:Landroid/os/Handler;

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/example/ctm/MainActivity;->nbrightness:I

    .line 224
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_color"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/example/ctm/MainActivity;->nbrightnessColor:I

    .line 225
    const/high16 v5, 0x7f030000

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 226
    const/high16 v5, 0x7f080000

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mainLayout:Landroid/widget/LinearLayout;

    .line 227
    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mPm:Landroid/os/PowerManager;

    .line 229
    const v5, 0x7f080009

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mColourLinearLayout:Landroid/widget/LinearLayout;

    .line 230
    const v5, 0x7f08000a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mColourValueTextView:Landroid/widget/TextView;

    .line 232
    const v5, 0x7f080003

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mBrightnessLinearLayout:Landroid/widget/LinearLayout;

    .line 233
    const v5, 0x7f080004

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mBrightnessValueTextView:Landroid/widget/TextView;

    .line 234
    const v5, 0x7f08000d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightnessColor:Landroid/widget/SeekBar;

    .line 235
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightnessColor:Landroid/widget/SeekBar;

    sget-object v6, Lcom/example/ctm/MainActivity;->COLOUR_LEVELS:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 236
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightnessColor:Landroid/widget/SeekBar;

    new-instance v6, Lcom/example/ctm/MainActivity$ChangedListener;

    invoke-direct {v6, p0, v11}, Lcom/example/ctm/MainActivity$ChangedListener;-><init>(Lcom/example/ctm/MainActivity;Lcom/example/ctm/MainActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 239
    const v5, 0x7f080007

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightness:Landroid/widget/SeekBar;

    .line 240
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightness:Landroid/widget/SeekBar;

    sget-object v6, Lcom/example/ctm/MainActivity;->BRIGHTNESS_LEVELS:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 241
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightness:Landroid/widget/SeekBar;

    new-instance v6, Lcom/example/ctm/MainActivity$ChangedListener;

    invoke-direct {v6, p0, v11}, Lcom/example/ctm/MainActivity$ChangedListener;-><init>(Lcom/example/ctm/MainActivity;Lcom/example/ctm/MainActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 243
    const v5, 0x7f080001

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mFrontLightLinearLayout:Landroid/widget/LinearLayout;

    .line 244
    const v5, 0x7f080002

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mSwitch:Landroid/widget/Switch;

    .line 245
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSwitch:Landroid/widget/Switch;

    new-instance v6, Lcom/example/ctm/MainActivity$1;

    invoke-direct {v6, p0}, Lcom/example/ctm/MainActivity$1;-><init>(Lcom/example/ctm/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 262
    const v5, 0x7f080010

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mGammaImageLinearLayout:Landroid/widget/LinearLayout;

    .line 263
    const-string v5, "ro.hw.frontlight"

    const-string v6, "No"

    invoke-static {v5, v6}, Lcom/example/ctm/SafeHelper;->SystemProperties_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "frontlightInfo":Ljava/lang/String;
    const-string v5, "CTM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getProperty(ro.hw.frontlight) :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v5, "No"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mFrontLightLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mBrightnessLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mColourLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :goto_0
    new-instance v5, Lcom/example/ctm/MainActivity$FLStateReceiver;

    invoke-direct {v5, p0}, Lcom/example/ctm/MainActivity$FLStateReceiver;-><init>(Lcom/example/ctm/MainActivity;)V

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mReceiver:Lcom/example/ctm/MainActivity$FLStateReceiver;

    .line 282
    const v5, 0x7f08000e

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mColourIncreaseButton:Landroid/view/View;

    .line 283
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mColourIncreaseButton:Landroid/view/View;

    new-instance v6, Lcom/example/ctm/MainActivity$2;

    invoke-direct {v6, p0}, Lcom/example/ctm/MainActivity$2;-><init>(Lcom/example/ctm/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v5, 0x7f08000c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mColourDecreaseButton:Landroid/view/View;

    .line 295
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mColourDecreaseButton:Landroid/view/View;

    new-instance v6, Lcom/example/ctm/MainActivity$3;

    invoke-direct {v6, p0}, Lcom/example/ctm/MainActivity$3;-><init>(Lcom/example/ctm/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    const v5, 0x7f080008

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mBrightnessIncreaseButton:Landroid/view/View;

    .line 307
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mBrightnessIncreaseButton:Landroid/view/View;

    new-instance v6, Lcom/example/ctm/MainActivity$4;

    invoke-direct {v6, p0}, Lcom/example/ctm/MainActivity$4;-><init>(Lcom/example/ctm/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v5, 0x7f080006

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mBrightnessDecreaseButton:Landroid/view/View;

    .line 319
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mBrightnessDecreaseButton:Landroid/view/View;

    new-instance v6, Lcom/example/ctm/MainActivity$5;

    invoke-direct {v6, p0}, Lcom/example/ctm/MainActivity$5;-><init>(Lcom/example/ctm/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    const-string v5, "hw.CTM.dev"

    const-string v6, "unkown"

    invoke-static {v5, v6}, Lcom/example/ctm/SafeHelper;->SystemProperties_get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "ctmInfo":Ljava/lang/String;
    const-string v5, "CTM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getProperty(hw.CTM.dev) :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/example/ctm/MainActivity;->mIsColourAvailable:Z

    .line 334
    iget-boolean v5, p0, Lcom/example/ctm/MainActivity;->mIsColourAvailable:Z

    if-eqz v5, :cond_2

    .line 335
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mColourLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :goto_1
    const/4 v3, 0x0

    .line 341
    .local v3, "level":I
    const/4 v4, 0x0

    .line 342
    .local v4, "value":I
    iget v5, p0, Lcom/example/ctm/MainActivity;->nbrightness:I

    invoke-virtual {p0, v5}, Lcom/example/ctm/MainActivity;->getBrightnessLevel(I)I

    move-result v3

    .line 343
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightness:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 344
    mul-int/lit8 v5, v3, 0x64

    div-int/lit8 v4, v5, 0xa

    .line 345
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mBrightnessValueTextView:Landroid/widget/TextView;

    const-string v6, "%4d%%"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget v5, p0, Lcom/example/ctm/MainActivity;->nbrightnessColor:I

    invoke-virtual {p0, v5}, Lcom/example/ctm/MainActivity;->getBrightnessColourLevel(I)I

    move-result v3

    .line 348
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightnessColor:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 349
    mul-int/lit8 v5, v3, 0x64

    div-int/lit8 v4, v5, 0xa

    .line 350
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mColourValueTextView:Landroid/widget/TextView;

    const-string v6, "%4d%%"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const v5, 0x7f080014

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarGamma:Landroid/widget/SeekBar;

    .line 354
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarGamma:Landroid/widget/SeekBar;

    sget-object v6, Lcom/example/ctm/MainActivity;->GAMMA_LEVELS:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 355
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarGamma:Landroid/widget/SeekBar;

    new-instance v6, Lcom/example/ctm/MainActivity$ChangedListener;

    invoke-direct {v6, p0, v11}, Lcom/example/ctm/MainActivity$ChangedListener;-><init>(Lcom/example/ctm/MainActivity;Lcom/example/ctm/MainActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 357
    const v5, 0x7f080015

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mGammaIncreaseButton:Landroid/view/View;

    .line 358
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mGammaIncreaseButton:Landroid/view/View;

    new-instance v6, Lcom/example/ctm/MainActivity$6;

    invoke-direct {v6, p0}, Lcom/example/ctm/MainActivity$6;-><init>(Lcom/example/ctm/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    const v5, 0x7f080013

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mGammaDecreaseButton:Landroid/view/View;

    .line 370
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mGammaDecreaseButton:Landroid/view/View;

    new-instance v6, Lcom/example/ctm/MainActivity$7;

    invoke-direct {v6, p0}, Lcom/example/ctm/MainActivity$7;-><init>(Lcom/example/ctm/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v5, 0x7f080011

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mGammaValueTextView:Landroid/widget/TextView;

    .line 382
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gamma_correction"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    .line 383
    const-string v5, "CTM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFloat(gamma_correction) :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_2
    iget v5, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    invoke-virtual {p0, v5}, Lcom/example/ctm/MainActivity;->getGammaLevel(I)I

    move-result v3

    .line 388
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarGamma:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 389
    const-string v5, "CTM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFloat(gamma_correction) :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget v5, p0, Lcom/example/ctm/MainActivity;->nGamma:I

    mul-int/lit8 v5, v5, 0x64

    div-int/lit8 v4, v5, 0xa

    .line 391
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mGammaValueTextView:Landroid/widget/TextView;

    const-string v6, "%4d%%"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const v5, 0x7f08001a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarWhiteness:Landroid/widget/SeekBar;

    .line 395
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarWhiteness:Landroid/widget/SeekBar;

    sget-object v6, Lcom/example/ctm/MainActivity;->WHITENESS_LEVELS:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 396
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarWhiteness:Landroid/widget/SeekBar;

    new-instance v6, Lcom/example/ctm/MainActivity$ChangedListener;

    invoke-direct {v6, p0, v11}, Lcom/example/ctm/MainActivity$ChangedListener;-><init>(Lcom/example/ctm/MainActivity;Lcom/example/ctm/MainActivity$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 398
    const v5, 0x7f08001b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mWhitenessIncreaseButton:Landroid/view/View;

    .line 399
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mWhitenessIncreaseButton:Landroid/view/View;

    new-instance v6, Lcom/example/ctm/MainActivity$8;

    invoke-direct {v6, p0}, Lcom/example/ctm/MainActivity$8;-><init>(Lcom/example/ctm/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    const v5, 0x7f080019

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mWhitenessDecreaseButton:Landroid/view/View;

    .line 412
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mWhitenessDecreaseButton:Landroid/view/View;

    new-instance v6, Lcom/example/ctm/MainActivity$9;

    invoke-direct {v6, p0}, Lcom/example/ctm/MainActivity$9;-><init>(Lcom/example/ctm/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    const v5, 0x7f080017

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/example/ctm/MainActivity;->mWhitenessValueTextView:Landroid/widget/TextView;

    .line 425
    :try_start_1
    const-string v5, "persist.sys.whiteness_threshold"

    const/16 v6, 0xff

    invoke-static {v5, v6}, Lcom/example/ctm/SafeHelper;->SystemProperties_getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/example/ctm/MainActivity;->nWhiteness:I

    .line 426
    const-string v5, "CTM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInt(whiteness_threshold) :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/example/ctm/MainActivity;->nWhiteness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 430
    :goto_3
    iget v5, p0, Lcom/example/ctm/MainActivity;->nWhiteness:I

    invoke-virtual {p0, v5}, Lcom/example/ctm/MainActivity;->getWhitenessLevel(I)I

    move-result v3

    .line 431
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mSeekbarWhiteness:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 432
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mWhitenessValueTextView:Landroid/widget/TextView;

    const-string v6, "%4d"

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/example/ctm/MainActivity;->nWhiteness:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    return-void

    .line 270
    .end local v0    # "ctmInfo":Ljava/lang/String;
    .end local v3    # "level":I
    .end local v4    # "value":I
    :cond_1
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mFrontLightLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mBrightnessLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mColourLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 337
    .restart local v0    # "ctmInfo":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/example/ctm/MainActivity;->mColourLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 384
    .restart local v3    # "level":I
    .restart local v4    # "value":I
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "CTM"

    const-string v6, "NumberFormatException: getFloat(gamma_correction)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 427
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 428
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v5, "CTM"

    const-string v6, "NumberFormatException: getInt(whiteness_threshold)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mReceiver:Lcom/example/ctm/MainActivity$FLStateReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 152
    const-string v0, "CTM"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/example/ctm/MainActivity;->SaveBrightnessToSystem()V

    .line 154
    invoke-virtual {p0}, Lcom/example/ctm/MainActivity;->SaveBrightnessColorToSystem()V

    .line 155
    invoke-virtual {p0}, Lcom/example/ctm/MainActivity;->SaveGammaToSystem()V

    .line 156
    invoke-virtual {p0}, Lcom/example/ctm/MainActivity;->SaveWhitenessToSystem()V

    .line 157
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    const-string v1, "CTM"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "front_light_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/example/ctm/MainActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    invoke-virtual {p0, v3}, Lcom/example/ctm/MainActivity;->setEnabledFrontLightItems(Z)V

    .line 135
    const-string v1, "CTM"

    const-string v2, "mSwitch set nocheck"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.FL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/example/ctm/MainActivity;->mReceiver:Lcom/example/ctm/MainActivity$FLStateReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void

    .line 137
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/example/ctm/MainActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/example/ctm/MainActivity;->setEnabledFrontLightItems(Z)V

    .line 139
    const-string v1, "CTM"

    const-string v2, "mSwitch setChecked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendFLChangedBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "flstate"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v1, "mBundle":Landroid/os/Bundle;
    const-string v2, "FL_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 212
    const-string v2, "android.intent.action.FL_SW_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method protected setEnabledFrontLightItems(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    .line 112
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mBrightnessDecreaseButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mBrightnessIncreaseButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightness:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mColourDecreaseButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mColourIncreaseButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightnessColor:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    iget-object v3, p0, Lcom/example/ctm/MainActivity;->mBrightnessDecreaseButton:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 120
    iget-object v3, p0, Lcom/example/ctm/MainActivity;->mBrightnessIncreaseButton:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 121
    iget-object v3, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightness:Landroid/widget/SeekBar;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 122
    iget-object v3, p0, Lcom/example/ctm/MainActivity;->mColourDecreaseButton:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 123
    iget-object v3, p0, Lcom/example/ctm/MainActivity;->mColourIncreaseButton:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 124
    iget-object v0, p0, Lcom/example/ctm/MainActivity;->mSeekbarBrightnessColor:Landroid/widget/SeekBar;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 125
    return-void

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    :cond_1
    move v0, v2

    .line 120
    goto :goto_1

    :cond_2
    move v0, v2

    .line 121
    goto :goto_2

    :cond_3
    move v0, v2

    .line 122
    goto :goto_3

    :cond_4
    move v0, v2

    .line 123
    goto :goto_4

    :cond_5
    move v1, v2

    .line 124
    goto :goto_5
.end method
