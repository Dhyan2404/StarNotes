.class public final synthetic Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageView;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda6;->f$0:Landroid/widget/ImageView;

    iput-object p2, p0, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda6;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda6;->f$0:Landroid/widget/ImageView;

    iget-object v1, p0, Lbin/mt/signature/KillerApplicationmt$$ExternalSyntheticLambda6;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lbin/mt/signature/KillerApplicationmt;->lambda$createImprovedSocialIconColumn$6(Landroid/widget/ImageView;Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
