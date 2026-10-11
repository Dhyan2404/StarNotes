.class public final synthetic Lcom/sunia/HTREnginev2/btn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/btn;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/btn;->f:Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/btn;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/btn;->f:Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->l(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/events/note/AppendShapeDownPointEvent;)V

    return-void
.end method
