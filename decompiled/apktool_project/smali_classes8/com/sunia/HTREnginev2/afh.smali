.class public final synthetic Lcom/sunia/HTREnginev2/afh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/afh;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/afh;->f:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/afh;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/afh;->f:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    check-cast p1, Ljava/util/Map;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->l(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/note/common/command/CompositeCommand;Ljava/util/Map;)V

    return-void
.end method
