.class public final Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008T\u0018\u0000 i2\u00020\u0001:\u0001iB\u0007\u00a2\u0006\u0004\u0008g\u0010hJ\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u0016\u0010\u000f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000cJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000cJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000cJ\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0016J\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0002J\u0010\u0010 \u001a\u00020\u00002\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\tJ\u000e\u0010$\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\tJ\u000e\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\tJ\u000e\u0010(\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\tJ\u000e\u0010*\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u0005J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0016J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\tR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R$\u00108\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R$\u0010\r\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R$\u0010\u000e\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008>\u0010;\u001a\u0004\u0008?\u0010=R$\u0010\u0010\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008@\u0010;\u001a\u0004\u0008A\u0010=R$\u0010\u0012\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008B\u0010;\u001a\u0004\u0008C\u0010=R$\u0010\u0014\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008D\u0010;\u001a\u0004\u0008E\u0010=R$\u0010\u0017\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00168\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010IR$\u0010\u0019\u001a\u00020\u00162\u0006\u0010/\u001a\u00020\u00168\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008J\u0010G\u001a\u0004\u0008K\u0010IR(\u0010\u001b\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008L\u00101\u001a\u0004\u0008M\u00103R(\u0010\u001d\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008N\u00101\u001a\u0004\u0008O\u00103R(\u0010\u001f\u001a\u0004\u0018\u00010\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008P\u00101\u001a\u0004\u0008Q\u00103R$\u0010S\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008R\u00107\u001a\u0004\u0008S\u00109R$\u0010U\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008T\u00107\u001a\u0004\u0008U\u00109R$\u0010W\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008V\u00107\u001a\u0004\u0008W\u00109R$\u0010\'\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008X\u00107\u001a\u0004\u0008Y\u00109R\"\u0010^\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Z\u00105\u001a\u0004\u0008[\u0010\\\"\u0004\u0008*\u0010]R\"\u0010b\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010G\u001a\u0004\u0008`\u0010I\"\u0004\u0008,\u0010aR\"\u0010f\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008c\u00107\u001a\u0004\u0008d\u00109\"\u0004\u0008.\u0010e\u00a8\u0006j"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
        "",
        "",
        "content",
        "setContent",
        "Landroid/graphics/RectF;",
        "getRenderRect",
        "renderRect",
        "setRenderRect",
        "",
        "darkTheme",
        "setDarkTheme",
        "",
        "scaleX",
        "scaleY",
        "setScale",
        "rotation",
        "setRotation",
        "fontSize",
        "setFontSize",
        "lineHeight",
        "setLineHeight",
        "",
        "orientation",
        "setOrientation",
        "textColor",
        "setTextColor",
        "alignType",
        "setAlignType",
        "fontFamily",
        "setFontFamily",
        "fontPath",
        "setFontPath",
        "bold",
        "setBold",
        "italic",
        "setItalic",
        "underline",
        "setUnderline",
        "editForAll",
        "setEditForAll",
        "rectF",
        "setLimitRect",
        "len",
        "setPlainTextLen",
        "show",
        "setShowEditorDirectly",
        "<set-?>",
        "a",
        "Ljava/lang/String;",
        "getContent",
        "()Ljava/lang/String;",
        "b",
        "Landroid/graphics/RectF;",
        "c",
        "Z",
        "isDarkTheme",
        "()Z",
        "d",
        "F",
        "getScaleX",
        "()F",
        "e",
        "getScaleY",
        "f",
        "getRotation",
        "g",
        "getFontSize",
        "h",
        "getLineHeight",
        "i",
        "I",
        "getOrientation",
        "()I",
        "j",
        "getTextColor",
        "k",
        "getAlignType",
        "l",
        "getFontFamily",
        "m",
        "getFontPath",
        "n",
        "isBold",
        "o",
        "isUnderline",
        "p",
        "isItalic",
        "q",
        "getEditForAll",
        "r",
        "getLimitRect",
        "()Landroid/graphics/RectF;",
        "(Landroid/graphics/RectF;)V",
        "limitRect",
        "s",
        "getPlainTextLen",
        "(I)V",
        "plainTextLen",
        "t",
        "getShowEditorDirectly",
        "(Z)V",
        "showEditorDirectly",
        "<init>",
        "()V",
        "Companion",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Z

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:I

.field public t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->Companion:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->r:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->t:Z

    return-void
.end method


# virtual methods
.method public final getAlignType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getEditForAll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->q:Z

    return p0
.end method

.method public final getFontFamily()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->g:F

    return p0
.end method

.method public final getLimitRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->r:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getLineHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->h:F

    return p0
.end method

.method public final getOrientation()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->i:I

    return p0
.end method

.method public final getPlainTextLen()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->s:I

    return p0
.end method

.method public final getRenderRect()Landroid/graphics/RectF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getRotation()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->f:F

    return p0
.end method

.method public final getScaleX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->d:F

    return p0
.end method

.method public final getScaleY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->e:F

    return p0
.end method

.method public final getShowEditorDirectly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->t:Z

    return p0
.end method

.method public final getTextColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->j:I

    return p0
.end method

.method public final isBold()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->n:Z

    return p0
.end method

.method public final isDarkTheme()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->c:Z

    return p0
.end method

.method public final isItalic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->p:Z

    return p0
.end method

.method public final isUnderline()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->o:Z

    return p0
.end method

.method public final setAlignType(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final setBold(Z)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->n:Z

    return-object p0
.end method

.method public final setContent(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setDarkTheme(Z)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->c:Z

    return-object p0
.end method

.method public final setEditForAll(Z)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->q:Z

    return-object p0
.end method

.method public final setFontFamily(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final setFontPath(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final setFontSize(F)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->g:F

    return-object p0
.end method

.method public final setItalic(Z)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->p:Z

    return-object p0
.end method

.method public final setLimitRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->r:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setLimitRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->r:Landroid/graphics/RectF;

    return-void
.end method

.method public final setLineHeight(F)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->h:F

    return-object p0
.end method

.method public final setOrientation(I)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->i:I

    return-object p0
.end method

.method public final setPlainTextLen(I)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->s:I

    return-object p0
.end method

.method public final setPlainTextLen(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->s:I

    return-void
.end method

.method public final setRenderRect(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final setRotation(F)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->f:F

    return-object p0
.end method

.method public final setScale(FF)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->d:F

    iput p2, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->e:F

    return-object p0
.end method

.method public final setShowEditorDirectly(Z)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->t:Z

    return-object p0
.end method

.method public final setShowEditorDirectly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->t:Z

    return-void
.end method

.method public final setTextColor(I)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->j:I

    return-object p0
.end method

.method public final setUnderline(Z)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->o:Z

    return-object p0
.end method
