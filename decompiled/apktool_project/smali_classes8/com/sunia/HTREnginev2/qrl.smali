.class public final synthetic Lcom/sunia/HTREnginev2/qrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/util/Consumer;

.field public final synthetic f:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Consumer;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qrl;->e:Landroidx/core/util/Consumer;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qrl;->f:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qrl;->e:Landroidx/core/util/Consumer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qrl;->f:Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->f(Landroidx/core/util/Consumer;Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)V

    return-void
.end method
