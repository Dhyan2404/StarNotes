.class public Lorg/mozilla/universalchardet/prober/HebrewProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# static fields
.field public static final FINAL_KAF:I = 0xea

.field public static final FINAL_MEM:I = 0xed

.field public static final FINAL_NUN:I = 0xef

.field public static final FINAL_PE:I = 0xf3

.field public static final FINAL_TSADI:I = 0xf5

.field public static final MIN_FINAL_CHAR_DISTANCE:I = 0x5

.field public static final MIN_MODEL_DISTANCE:F = 0.01f

.field public static final NORMAL_KAF:I = 0xeb

.field public static final NORMAL_MEM:I = 0xee

.field public static final NORMAL_NUN:I = 0xf0

.field public static final NORMAL_PE:I = 0xf4

.field public static final NORMAL_TSADI:I = 0xf6

.field public static final SPACE:B = 0x20t


# instance fields
.field public b:I

.field public c:I

.field public d:B

.field public e:B

.field public f:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field public g:Lorg/mozilla/universalchardet/prober/CharsetProber;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->f:Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->g:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->reset()V

    return-void
.end method

.method public static isFinal(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xea

    if-eq p0, v0, :cond_1

    const/16 v0, 0xed

    if-eq p0, v0, :cond_1

    const/16 v0, 0xef

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNonFinal(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xeb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xee

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->b:I

    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v1, -0x5

    if-gt v0, v1, :cond_1

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->f:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v1

    iget-object p0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->g:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result p0

    sub-float/2addr v1, p0

    const p0, 0x3c23d70a    # 0.01f

    cmpl-float p0, v1, p0

    if-lez p0, :cond_2

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object p0

    :cond_2
    const p0, -0x43dc28f6    # -0.01f

    cmpg-float p0, v1, p0

    if-gez p0, :cond_3

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object p0

    :cond_3
    if-gez v0, :cond_4

    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object p0

    :cond_4
    sget-object p0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object p0
.end method

.method public getConfidence()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->f:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->g:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object p0

    if-ne p0, v1, :cond_0

    return-object v1

    :cond_0
    sget-object p0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    return-object v1

    :cond_0
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_4

    aget-byte v0, p1, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->e:B

    if-eq v2, v1, :cond_3

    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    invoke-static {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->b:I

    goto :goto_1

    :cond_1
    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    invoke-static {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isNonFinal(B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    goto :goto_1

    :cond_2
    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->e:B

    if-ne v2, v1, :cond_3

    iget-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    invoke-static {v2}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v0, v1, :cond_3

    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    :cond_3
    :goto_1
    iget-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    iput-byte v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->e:B

    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    sget-object p0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object p0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->b:I

    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->c:I

    const/16 v0, 0x20

    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->d:B

    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->e:B

    return-void
.end method

.method public setModalProbers(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->f:Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->g:Lorg/mozilla/universalchardet/prober/CharsetProber;

    return-void
.end method

.method public setOption()V
    .locals 0

    return-void
.end method
