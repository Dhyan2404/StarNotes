.class public final Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u00084\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010$\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008@\u0010AJN\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002R\"\u0010\u0015\u001a\u00020\u000e8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010 \u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0017\u001a\u0004\u0008\u001e\u0010\u0019\"\u0004\u0008\u001f\u0010\u001bR\"\u0010$\u001a\u00020\u000e8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0010\u001a\u0004\u0008\"\u0010\u0012\"\u0004\u0008#\u0010\u0014R\"\u0010\u0003\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u0017\u001a\u0004\u0008&\u0010\u0019\"\u0004\u0008\'\u0010\u001bR\"\u0010\u0004\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u0017\u001a\u0004\u0008)\u0010\u0019\"\u0004\u0008*\u0010\u001bR\"\u0010\u0005\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u0017\u001a\u0004\u0008,\u0010\u0019\"\u0004\u0008-\u0010\u001bR\"\u0010\u0006\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u0017\u001a\u0004\u0008/\u0010\u0019\"\u0004\u00080\u0010\u001bR\"\u0010\u0007\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u0017\u001a\u0004\u00082\u0010\u0019\"\u0004\u00083\u0010\u001bR\"\u0010\u0008\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010\u0017\u001a\u0004\u00085\u0010\u0019\"\u0004\u00086\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010\u0017\u001a\u0004\u00088\u0010\u0019\"\u0004\u00089\u0010\u001bR\"\u0010\n\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u0017\u001a\u0004\u0008;\u0010\u0019\"\u0004\u0008<\u0010\u001bR\"\u0010\u000b\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010\u0017\u001a\u0004\u0008>\u0010\u0019\"\u0004\u0008?\u0010\u001b\u00a8\u0006B"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;",
        "",
        "",
        "continuity",
        "cursive",
        "lightBrush",
        "width",
        "feiBai",
        "brushTexture",
        "yiYang",
        "smooth",
        "autoSmooth",
        "",
        "updateValue",
        "",
        "a",
        "Ljava/lang/String;",
        "getName$sdk_sunia_overseasRelease",
        "()Ljava/lang/String;",
        "setName$sdk_sunia_overseasRelease",
        "(Ljava/lang/String;)V",
        "name",
        "b",
        "I",
        "getMode$sdk_sunia_overseasRelease",
        "()I",
        "setMode$sdk_sunia_overseasRelease",
        "(I)V",
        "mode",
        "c",
        "getIntensity$sdk_sunia_overseasRelease",
        "setIntensity$sdk_sunia_overseasRelease",
        "intensity",
        "d",
        "getTip$sdk_sunia_overseasRelease",
        "setTip$sdk_sunia_overseasRelease",
        "tip",
        "e",
        "getContinuity$sdk_sunia_overseasRelease",
        "setContinuity$sdk_sunia_overseasRelease",
        "f",
        "getCursive$sdk_sunia_overseasRelease",
        "setCursive$sdk_sunia_overseasRelease",
        "g",
        "getLightBrush$sdk_sunia_overseasRelease",
        "setLightBrush$sdk_sunia_overseasRelease",
        "h",
        "getWidth$sdk_sunia_overseasRelease",
        "setWidth$sdk_sunia_overseasRelease",
        "i",
        "getFeiBai$sdk_sunia_overseasRelease",
        "setFeiBai$sdk_sunia_overseasRelease",
        "j",
        "getBrushTexture$sdk_sunia_overseasRelease",
        "setBrushTexture$sdk_sunia_overseasRelease",
        "k",
        "getYiYang$sdk_sunia_overseasRelease",
        "setYiYang$sdk_sunia_overseasRelease",
        "l",
        "getSmooth$sdk_sunia_overseasRelease",
        "setSmooth$sdk_sunia_overseasRelease",
        "m",
        "getAutoSmooth$sdk_sunia_overseasRelease",
        "setAutoSmooth$sdk_sunia_overseasRelease",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;IIIIIIIII)V",
        "sdk-sunia_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 16

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;IIIIIIIII)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    const-string v3, "name"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "tip"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, v0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->a:Ljava/lang/String;

    move v1, p2

    .line 4
    iput v1, v0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->b:I

    move v1, p3

    .line 5
    iput v1, v0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->c:I

    .line 6
    iput-object v2, v0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->d:Ljava/lang/String;

    move v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    .line 7
    invoke-virtual/range {v0 .. v9}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->updateValue(IIIIIIIII)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;IIIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v2, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move v8, v4

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move v9, v4

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move v10, v4

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move v11, v4

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move v12, v4

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move v13, v4

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move/from16 v4, p13

    :goto_c
    move-object p1, v1

    move/from16 p2, v3

    move/from16 p3, v5

    move-object/from16 p4, v2

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v4

    .line 8
    invoke-direct/range {p0 .. p13}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIIIIII)V

    return-void
.end method


# virtual methods
.method public final getAutoSmooth$sdk_sunia_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->m:I

    return p0
.end method

.method public final getBrushTexture$sdk_sunia_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->j:I

    return p0
.end method

.method public final getContinuity$sdk_sunia_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->e:I

    return p0
.end method

.method public final getCursive$sdk_sunia_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->f:I

    return p0
.end method

.method public final getFeiBai$sdk_sunia_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->i:I

    return p0
.end method

.method public final getIntensity$sdk_sunia_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->c:I

    return p0
.end method

.method public final getLightBrush$sdk_sunia_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->g:I

    return p0
.end method

.method public final getMode$sdk_sunia_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->b:I

    return p0
.end method

.method public final getName$sdk_sunia_overseasRelease()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getSmooth$sdk_sunia_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->l:I

    return p0
.end method

.method public final getTip$sdk_sunia_overseasRelease()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidth$sdk_sunia_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->h:I

    return p0
.end method

.method public final getYiYang$sdk_sunia_overseasRelease()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->k:I

    return p0
.end method

.method public final setAutoSmooth$sdk_sunia_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->m:I

    return-void
.end method

.method public final setBrushTexture$sdk_sunia_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->j:I

    return-void
.end method

.method public final setContinuity$sdk_sunia_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->e:I

    return-void
.end method

.method public final setCursive$sdk_sunia_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->f:I

    return-void
.end method

.method public final setFeiBai$sdk_sunia_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->i:I

    return-void
.end method

.method public final setIntensity$sdk_sunia_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->c:I

    return-void
.end method

.method public final setLightBrush$sdk_sunia_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->g:I

    return-void
.end method

.method public final setMode$sdk_sunia_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->b:I

    return-void
.end method

.method public final setName$sdk_sunia_overseasRelease(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->a:Ljava/lang/String;

    return-void
.end method

.method public final setSmooth$sdk_sunia_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->l:I

    return-void
.end method

.method public final setTip$sdk_sunia_overseasRelease(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->d:Ljava/lang/String;

    return-void
.end method

.method public final setWidth$sdk_sunia_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->h:I

    return-void
.end method

.method public final setYiYang$sdk_sunia_overseasRelease(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->k:I

    return-void
.end method

.method public final updateValue(IIIIIIIII)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->e:I

    iput p2, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->f:I

    iput p3, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->g:I

    iput p4, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->h:I

    iput p5, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->i:I

    iput p6, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->j:I

    iput p7, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->k:I

    iput p8, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->l:I

    iput p9, p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->m:I

    return-void
.end method
