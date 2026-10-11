.class public final Lcom/onyx/android/sdk/geometry/data/MarginStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/geometry/data/MarginStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005B#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008B\u0005\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u001d\u001a\u00020\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/data/MarginStyle;",
        "",
        "color",
        "",
        "style",
        "(II)V",
        "templateResource",
        "",
        "(ILjava/lang/String;I)V",
        "()V",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "getStyle",
        "setStyle",
        "getTemplateResource",
        "()Ljava/lang/String;",
        "setTemplateResource",
        "(Ljava/lang/String;)V",
        "templateResourceId",
        "getTemplateResourceId",
        "setTemplateResourceId",
        "templateSpace",
        "",
        "getTemplateSpace",
        "()F",
        "setTemplateSpace",
        "(F)V",
        "copy",
        "Companion",
        "sdk-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/geometry/data/MarginStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STYLE_DOTTED:I = 0x2

.field public static final STYLE_GRID:I = 0x3

.field public static final STYLE_LINE:I = 0x1

.field public static final STYLE_NONE:I


# instance fields
.field private color:I

.field private style:I

.field private templateResource:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private templateResourceId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private templateSpace:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/geometry/data/MarginStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->Companion:Lcom/onyx/android/sdk/geometry/data/MarginStyle$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->color:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 3
    iput v0, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateSpace:F

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>()V

    .line 5
    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->color:I

    .line 6
    iput p2, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->style:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>(II)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p3}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>(II)V

    .line 9
    iput-object p2, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateResource:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final copy()Lcom/onyx/android/sdk/geometry/data/MarginStyle;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>()V

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->color:I

    iput v1, v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->color:I

    iget v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->style:I

    iput v1, v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->style:I

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateResource:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateResource:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateResourceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateResourceId:Ljava/lang/String;

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateSpace:F

    iput p0, v0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateSpace:F

    return-object v0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->color:I

    return p0
.end method

.method public final getStyle()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->style:I

    return p0
.end method

.method public final getTemplateResource()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateResource:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemplateResourceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateResourceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemplateSpace()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateSpace:F

    return p0
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->color:I

    return-void
.end method

.method public final setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->style:I

    return-void
.end method

.method public final setTemplateResource(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateResource:Ljava/lang/String;

    return-void
.end method

.method public final setTemplateResourceId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateResourceId:Ljava/lang/String;

    return-void
.end method

.method public final setTemplateSpace(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->templateSpace:F

    return-void
.end method
