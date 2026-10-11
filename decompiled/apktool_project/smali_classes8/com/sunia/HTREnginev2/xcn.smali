.class public final synthetic Lcom/sunia/HTREnginev2/xcn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xcn;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xcn;->f:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xcn;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xcn;->f:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->a(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    return-void
.end method
