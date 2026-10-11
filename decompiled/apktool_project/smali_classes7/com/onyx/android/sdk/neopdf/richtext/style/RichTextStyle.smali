.class public final Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\'\u0008\u0086\u0008\u0018\u0000 G2\u00020\u0001:\u0001GBa\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0011\u00a2\u0006\u0004\u0008E\u0010FJ\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0006\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\n\u001a\u00020\tH\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u000bH\u00c6\u0003J\t\u0010\u000e\u001a\u00020\rH\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u000fH\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0011H\u00c6\u0003Jc\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0011H\u00c6\u0001J\t\u0010\u001e\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\rH\u00d6\u0001J\u0013\u0010\"\u001a\u00020!2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0013\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u0017\u0010\u0014\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*R\u0017\u0010\u0015\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010(\u001a\u0004\u0008,\u0010*R\u0017\u0010\u0016\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\u0017\u0010\u0017\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104R\u0017\u0010\u0018\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108R\u0017\u0010\u0019\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<R\u0017\u0010\u001a\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@R\u0017\u0010\u001b\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010D\u00a8\u0006H"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;",
        "",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;",
        "component1",
        "",
        "component2",
        "component3",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;",
        "component4",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;",
        "component5",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;",
        "component6",
        "",
        "component7",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;",
        "component8",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;",
        "component9",
        "textAlign",
        "fontSize",
        "lineHeight",
        "fontStyle",
        "fontWeight",
        "fontFamily",
        "color",
        "textDecoration",
        "fontStretch",
        "copy",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;",
        "getTextAlign",
        "()Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;",
        "b",
        "F",
        "getFontSize",
        "()F",
        "c",
        "getLineHeight",
        "d",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;",
        "getFontStyle",
        "()Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;",
        "e",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;",
        "getFontWeight",
        "()Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;",
        "f",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;",
        "getFontFamily",
        "()Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;",
        "g",
        "I",
        "getColor",
        "()I",
        "h",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;",
        "getTextDecoration",
        "()Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;",
        "i",
        "Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;",
        "getFontStretch",
        "()Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;",
        "<init>",
        "(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;)V",
        "Companion",
        "sdk-neopdf_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_FONT_SIZE:F = 12.0f


# instance fields
.field public final a:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:F

.field public final c:F

.field public final d:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:I

.field public final h:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->Companion:Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

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

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;-><init>(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textAlign"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontStyle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeight"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontFamily"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textDecoration"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontStretch"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->b:F

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->c:F

    .line 6
    iput-object p4, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->d:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    .line 7
    iput-object p5, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->e:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    .line 8
    iput-object p6, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->f:Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;

    .line 9
    iput p7, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->g:I

    .line 10
    iput-object p8, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->h:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    .line 11
    iput-object p9, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->i:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 12
    sget-object v1, Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;->LEFT:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const/high16 v2, 0x41400000    # 12.0f

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 13
    sget-object v4, Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;->NORMAL:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    goto :goto_3

    :cond_3
    move-object v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 14
    sget-object v5, Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;->NORMAL:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    goto :goto_4

    :cond_4
    move-object v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 15
    new-instance v6, Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;

    invoke-direct {v6}, Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;-><init>()V

    goto :goto_5

    :cond_5
    move-object v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    const/high16 v7, -0x1000000

    goto :goto_6

    :cond_6
    move/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    .line 16
    sget-object v8, Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;->NORMAL:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 17
    sget-object v0, Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;->NORMAL:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;

    goto :goto_8

    :cond_8
    move-object/from16 v0, p9

    :goto_8
    move-object p1, v1

    move p2, v2

    move p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v0

    .line 18
    invoke-direct/range {p0 .. p9}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;-><init>(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;ILjava/lang/Object;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->b:F

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->c:F

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->d:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->e:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->f:Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->g:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->h:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->i:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move p2, v3

    move p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->copy(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    return-object p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->b:F

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->c:F

    return p0
.end method

.method public final component4()Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->d:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    return-object p0
.end method

.method public final component5()Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->e:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    return-object p0
.end method

.method public final component6()Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->f:Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;

    return-object p0
.end method

.method public final component7()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->g:I

    return p0
.end method

.method public final component8()Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->h:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    return-object p0
.end method

.method public final component9()Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->i:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;

    return-object p0
.end method

.method public final copy(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;)Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "textAlign"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontStyle"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeight"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontFamily"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textDecoration"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontStretch"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;-><init>(Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;FFLcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;ILcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    iget-object v3, p1, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->b:F

    iget v3, p1, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->c:F

    iget v3, p1, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->d:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    iget-object v3, p1, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->d:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->e:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    iget-object v3, p1, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->e:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->f:Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;

    iget-object v3, p1, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->f:Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->g:I

    iget v3, p1, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->h:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    iget-object v3, p1, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->h:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->i:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;

    iget-object p1, p1, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->i:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->g:I

    return p0
.end method

.method public final getFontFamily()Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->f:Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;

    return-object p0
.end method

.method public final getFontSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->b:F

    return p0
.end method

.method public final getFontStretch()Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->i:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;

    return-object p0
.end method

.method public final getFontStyle()Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->d:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    return-object p0
.end method

.method public final getFontWeight()Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->e:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    return-object p0
.end method

.method public final getLineHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->c:F

    return p0
.end method

.method public final getTextAlign()Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    return-object p0
.end method

.method public final getTextDecoration()Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->h:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->d:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->e:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->f:Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->h:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->i:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RichTextStyle(textAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->a:Lcom/onyx/android/sdk/neopdf/richtext/style/TextAlign;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lineHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->d:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->e:Lcom/onyx/android/sdk/neopdf/richtext/style/FontWeight;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->f:Lcom/onyx/android/sdk/neopdf/richtext/style/FontFamily;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textDecoration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->h:Lcom/onyx/android/sdk/neopdf/richtext/style/TextDecoration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontStretch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/richtext/style/RichTextStyle;->i:Lcom/onyx/android/sdk/neopdf/richtext/style/FontStretch;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
