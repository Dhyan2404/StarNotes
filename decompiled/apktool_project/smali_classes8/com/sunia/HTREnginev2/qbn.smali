.class public final synthetic Lcom/sunia/HTREnginev2/qbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

.field public final synthetic f:Z

.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qbn;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/qbn;->f:Z

    iput p3, p0, Lcom/sunia/HTREnginev2/qbn;->g:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qbn;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/qbn;->f:Z

    iget p0, p0, Lcom/sunia/HTREnginev2/qbn;->g:F

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->d(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;ZF)V

    return-void
.end method
