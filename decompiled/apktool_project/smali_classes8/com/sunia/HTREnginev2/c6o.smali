.class public final synthetic Lcom/sunia/HTREnginev2/c6o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/c6o;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/c6o;->a:Landroid/webkit/ValueCallback;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/editor/WebEditor;->c(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method
