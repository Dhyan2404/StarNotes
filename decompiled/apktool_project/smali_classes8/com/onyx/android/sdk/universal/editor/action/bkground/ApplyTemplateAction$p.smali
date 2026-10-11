.class public final Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->r(Lcom/onyx/android/sdk/genericshape/GeoLayout;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/genericshape/GeoLayout;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/genericshape/GeoLayout;Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$p;->e:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$p;->f:Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$p;->e:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$p;->f:Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getGeoLayoutShaderWrapper()Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    move-result-object p0

    const-class v1, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->setGeoLayout(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction$p;->a(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    return-void
.end method
