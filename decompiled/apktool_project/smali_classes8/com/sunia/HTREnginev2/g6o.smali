.class public final synthetic Lcom/sunia/HTREnginev2/g6o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/textbox/editor/WebEditor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/g6o;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/g6o;->a:Lcom/onyx/android/sdk/textbox/editor/WebEditor;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->a(Lcom/onyx/android/sdk/textbox/editor/WebEditor;Ljava/lang/String;)V

    return-void
.end method
