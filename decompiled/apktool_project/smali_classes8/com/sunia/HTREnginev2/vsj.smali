.class public final synthetic Lcom/sunia/HTREnginev2/vsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vsj;->e:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vsj;->e:Lcom/onyx/android/sdk/textbox/editor/NativeEditor;

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/editor/NativeEditor;->b(Lcom/onyx/android/sdk/textbox/editor/NativeEditor;)V

    return-void
.end method
