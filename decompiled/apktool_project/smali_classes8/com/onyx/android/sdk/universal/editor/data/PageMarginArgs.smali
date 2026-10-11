.class public final Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR\u001c\u0010!\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001b\"\u0004\u0008#\u0010\u001dR\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;",
        "",
        "()V",
        "applyAll",
        "",
        "getApplyAll",
        "()Z",
        "setApplyAll",
        "(Z)V",
        "applyToCover",
        "getApplyToCover",
        "setApplyToCover",
        "marginColor",
        "",
        "getMarginColor",
        "()I",
        "setMarginColor",
        "(I)V",
        "marginPercent",
        "Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "getMarginPercent",
        "()Lcom/onyx/android/sdk/geometry/data/MarginPercent;",
        "setMarginPercent",
        "(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V",
        "pageId",
        "",
        "getPageId",
        "()Ljava/lang/String;",
        "setPageId",
        "(Ljava/lang/String;)V",
        "templateResource",
        "getTemplateResource",
        "setTemplateResource",
        "templateResourceId",
        "getTemplateResourceId",
        "setTemplateResourceId",
        "templateSpace",
        "",
        "getTemplateSpace",
        "()F",
        "setTemplateSpace",
        "(F)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private applyAll:Z

.field private applyToCover:Z

.field private marginColor:I

.field private marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->pageId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->marginColor:I

    return-void
.end method


# virtual methods
.method public final getApplyAll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->applyAll:Z

    return p0
.end method

.method public final getApplyToCover()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->applyToCover:Z

    return p0
.end method

.method public final getMarginColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->marginColor:I

    return p0
.end method

.method public final getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemplateResource()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->templateResource:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemplateResourceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->templateResourceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemplateSpace()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->templateSpace:F

    return p0
.end method

.method public final setApplyAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->applyAll:Z

    return-void
.end method

.method public final setApplyToCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->applyToCover:Z

    return-void
.end method

.method public final setMarginColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->marginColor:I

    return-void
.end method

.method public final setMarginPercent(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/MarginPercent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->marginPercent:Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->pageId:Ljava/lang/String;

    return-void
.end method

.method public final setTemplateResource(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->templateResource:Ljava/lang/String;

    return-void
.end method

.method public final setTemplateResourceId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->templateResourceId:Ljava/lang/String;

    return-void
.end method

.method public final setTemplateSpace(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->templateSpace:F

    return-void
.end method
