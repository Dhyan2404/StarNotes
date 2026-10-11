.class public final synthetic Lcom/sunia/HTREnginev2/edn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

.field public final synthetic f:Lcom/onyx/android/sdk/textbox/data/TransformType;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/textbox/data/TransformType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/edn;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/edn;->f:Lcom/onyx/android/sdk/textbox/data/TransformType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/edn;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/edn;->f:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$initRichListener$1;->a(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/textbox/data/TransformType;)V

    return-void
.end method
