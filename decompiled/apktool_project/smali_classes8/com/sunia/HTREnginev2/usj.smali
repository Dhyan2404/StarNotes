.class public final synthetic Lcom/sunia/HTREnginev2/usj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

.field public final synthetic f:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/usj;->e:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/usj;->f:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/usj;->e:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/usj;->f:Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->c(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;)V

    return-void
.end method
