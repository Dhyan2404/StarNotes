.class public final synthetic Lcom/sunia/HTREnginev2/ycn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ycn;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ycn;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ycn;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ycn;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->b(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/universal/editor/action/textinput/UpdateTextShapeRectAction;)V

    return-void
.end method
