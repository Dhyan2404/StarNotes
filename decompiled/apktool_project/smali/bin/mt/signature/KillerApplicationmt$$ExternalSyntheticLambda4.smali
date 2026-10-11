.class public final synthetic Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/CheckBox;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda4;->f$0:Landroid/widget/CheckBox;

    iput-object p2, p0, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda4;->f$2:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda4;->f$0:Landroid/widget/CheckBox;

    iget-object v1, p0, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda4;->f$2:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, p1}, Lbin/mt/signature/KillerApplicationmt;->lambda$show$4(Landroid/widget/CheckBox;Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
