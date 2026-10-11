.class public final synthetic Lcom/sunia/HTREnginev2/i9o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic e:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i9o;->e:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i9o;->e:Landroid/view/Window;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/WindowKt;->a(Landroid/view/Window;I)V

    return-void
.end method
