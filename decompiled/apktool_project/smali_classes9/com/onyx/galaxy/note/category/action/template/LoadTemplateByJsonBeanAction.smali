.class public final Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;
.super Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction<",
        "Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR$\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "model",
        "",
        "l",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "f",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "paperTemplateJsonBean",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "getTemplateModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "setTemplateModel",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V",
        "templateModel",
        "<init>",
        "(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paperTemplateJsonBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;->f:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    return-void
.end method

.method public static final synthetic access$loadTemplateColor(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;->l(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;->f:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByIdAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTemplateModel()Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;->f:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getSizeFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSizeFormat(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;->f:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getGeoContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->getSpacing()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->setSpaceValuePx(F)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setFromMMKV(Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/Properties;->getFillAttr()Lcom/onyx/android/sdk/genericshape/FillAttr;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/genericshape/FillAttr;->getColor()I

    move-result v1

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->selectByFillColor(Ljava/lang/Integer;)Z

    return-void
.end method

.method public final setTemplateModel(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    return-void
.end method
