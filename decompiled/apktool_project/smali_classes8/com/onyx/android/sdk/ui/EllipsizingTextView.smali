.class public final Lcom/onyx/android/sdk/ui/EllipsizingTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/widgets/Tintable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/ui/EllipsizingTextView$Companion;,
        Lcom/onyx/android/sdk/ui/EllipsizingTextView$a;,
        Lcom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeListener;,
        Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;,
        Lcom/onyx/android/sdk/ui/EllipsizingTextView$c;,
        Lcom/onyx/android/sdk/ui/EllipsizingTextView$d;,
        Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;,
        Lcom/onyx/android/sdk/ui/EllipsizingTextView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 [2\u00020\u00012\u00020\u0002:\u0007[\\]^_`aB\u0011\u0008\u0016\u0012\u0006\u0010S\u001a\u00020R\u00a2\u0006\u0004\u0008T\u0010UB\u001b\u0008\u0016\u0012\u0006\u0010S\u001a\u00020R\u0012\u0008\u0010W\u001a\u0004\u0018\u00010V\u00a2\u0006\u0004\u0008T\u0010XB#\u0008\u0016\u0012\u0006\u0010S\u001a\u00020R\u0012\u0008\u0010W\u001a\u0004\u0018\u00010V\u0012\u0006\u0010Y\u001a\u00020\u0003\u00a2\u0006\u0004\u0008T\u0010ZJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0012\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J(\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003H\u0014J(\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0003H\u0016J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0014J\u0006\u0010!\u001a\u00020 J&\u0010$\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0003J\u001e\u0010%\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0018\u001a\u00020\u0003J\u000e\u0010(\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020&J\u000e\u0010)\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020&J\u0008\u0010*\u001a\u00020\u0005H\u0016J\u0008\u0010+\u001a\u00020\u0005H\u0002J\u0008\u0010,\u001a\u00020\u0005H\u0002R\u001a\u00100\u001a\u0008\u0012\u0004\u0012\u00020&0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u001c\u00104\u001a\u0008\u0018\u000101R\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00107\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0016\u00108\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u00106R\u0016\u0010:\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u00109R\u0016\u0010<\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u00109R\u0016\u0010?\u001a\u00020\u000b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R$\u0010F\u001a\u00020@2\u0006\u0010A\u001a\u00020@8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008B\u0010C\u001a\u0004\u0008D\u0010ER$\u0010H\u001a\u00020 2\u0006\u0010A\u001a\u00020 8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008G\u00106\u001a\u0004\u0008H\u0010IR$\u0010N\u001a\u00020\u00032\u0006\u0010A\u001a\u00020\u00038\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR\u0016\u0010P\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010KR\u0016\u0010Q\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010K\u00a8\u0006b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/EllipsizingTextView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "Lcom/onyx/android/sdk/theme/widgets/Tintable;",
        "",
        "maxLines",
        "",
        "setMaxLines",
        "",
        "add",
        "mult",
        "setLineSpacing",
        "",
        "text",
        "Landroid/widget/TextView$BufferType;",
        "type",
        "setText",
        "Landroid/text/TextUtils$TruncateAt;",
        "where",
        "setEllipsize",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "left",
        "top",
        "right",
        "bottom",
        "setPadding",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "",
        "ellipsizingLastFullyVisibleLine",
        "",
        "pattern",
        "searchMostRight",
        "next",
        "Lcom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeListener;",
        "listener",
        "addEllipsizeListener",
        "removeEllipsizeListener",
        "tint",
        "o",
        "p",
        "",
        "l",
        "Ljava/util/List;",
        "ellipsizeListeners",
        "Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;",
        "m",
        "Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;",
        "ellipsizeStrategy",
        "n",
        "Z",
        "isStale",
        "programmaticChange",
        "F",
        "lineSpacingMult",
        "q",
        "lineAddVertPad",
        "r",
        "Ljava/lang/CharSequence;",
        "fullText",
        "Ljava/util/regex/Pattern;",
        "<set-?>",
        "s",
        "Ljava/util/regex/Pattern;",
        "getEndPunctPattern",
        "()Ljava/util/regex/Pattern;",
        "endPunctPattern",
        "t",
        "isEllipsized",
        "()Z",
        "u",
        "I",
        "getTextMaxLines",
        "()I",
        "textMaxLines",
        "v",
        "textColorRes",
        "drawableTintRes",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Companion",
        "a",
        "EllipsizeListener",
        "b",
        "c",
        "d",
        "e",
        "sdk-ui_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/ui/EllipsizingTextView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final J:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final O:Ljava/util/regex/Pattern;

.field public static final x:I = 0x1

.field public static final y:I = 0x4

.field public static final z:I = 0x3


# instance fields
.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Z

.field public o:Z

.field public p:F

.field public q:F

.field public r:Ljava/lang/CharSequence;

.field public s:Ljava/util/regex/Pattern;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Z

.field public u:I

.field public v:I

.field public w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->Companion:Lcom/onyx/android/sdk/ui/EllipsizingTextView$Companion;

    const-string v0, "\u2026"

    sput-object v0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->J:Ljava/lang/CharSequence;

    const-string v0, "[\\.!?,;:\u2026]*$"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->O:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->l:Ljava/util/List;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->p:F

    .line 6
    sget-object p3, Lcom/onyx/android/sdk/ui/R$styleable;->EllipsizingTextView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget p2, Lcom/onyx/android/sdk/ui/R$styleable;->EllipsizingTextView_android_textColor:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->v:I

    .line 8
    sget p2, Lcom/onyx/android/sdk/ui/R$styleable;->EllipsizingTextView_drawableTint:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->w:I

    .line 9
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->o()V

    .line 10
    sget p2, Lcom/onyx/android/sdk/ui/R$styleable;->EllipsizingTextView_android_maxLines:I

    const/4 p3, 0x3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 11
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->setMaxLines(I)V

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    sget-object p1, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->O:Ljava/util/regex/Pattern;

    const-string p2, "DEFAULT_END_PUNCTUATION"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->s:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static final synthetic access$getELLIPSIS$cp()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->J:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static final synthetic access$getLineAddVertPad$p(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->q:F

    return p0
.end method

.method public static final synthetic access$getLineSpacingMult$p(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->p:F

    return p0
.end method


# virtual methods
.method public final addEllipsizeListener(Lcom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeListener;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ellipsizingLastFullyVisibleLine()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->u:I

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getEndPunctPattern()Ljava/util/regex/Pattern;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->s:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method public final getTextMaxLines()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->u:I

    return p0
.end method

.method public final isEllipsized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->t:Z

    return p0
.end method

.method public final next(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pattern"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final o()V
    .locals 2

    iget v0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->v:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget v0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->w:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->w:I

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->ellipsizingLastFullyVisibleLine()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->n:Z

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->r:Ljava/lang/CharSequence;

    const-string v2, "fullText"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->m:Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->m:Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->r:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->m:Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->r:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;->e(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v5

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iput-boolean v5, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->o:Z

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iput-boolean v5, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->n:Z

    iget-boolean v1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->t:Z

    if-eq v0, v1, :cond_6

    iput-boolean v0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->t:Z

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeListener;

    invoke-interface {v1, v0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeListener;->ellipsizeStateChanged(Z)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final removeEllipsizeListener(Lcom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeListener;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ui/EllipsizingTextView$EllipsizeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final searchMostRight(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pattern"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    :goto_0
    const/4 p3, 0x0

    const/4 v0, 0x1

    if-gt v0, p0, :cond_0

    if-ge p0, p4, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    move v1, p3

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int v4, p0, v1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_1

    if-ge v1, p4, :cond_1

    move p3, v0

    :cond_1
    if-eqz p3, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    return p4
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .param p1    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/ui/EllipsizingTextView$c;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$c;-><init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->m:Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    new-instance p1, Lcom/onyx/android/sdk/ui/EllipsizingTextView$c;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$c;-><init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/ui/EllipsizingTextView$c;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$c;-><init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$b;-><init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/onyx/android/sdk/ui/EllipsizingTextView$d;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$d;-><init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/onyx/android/sdk/ui/EllipsizingTextView$a;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$a;-><init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V

    :goto_0
    iput-object p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->m:Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->q:F

    iput p2, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->p:F

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iput p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->u:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->n:Z

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->ellipsizingLastFullyVisibleLine()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->n:Z

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView$BufferType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->o:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/Spanned;

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->r:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->n:Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public tint()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/EllipsizingTextView;->o()V

    return-void
.end method
