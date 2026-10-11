.class public final synthetic Lcom/sunia/HTREnginev2/n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/n6;->e:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/n6;->e:Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/extension/ActivityKt;->b(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
