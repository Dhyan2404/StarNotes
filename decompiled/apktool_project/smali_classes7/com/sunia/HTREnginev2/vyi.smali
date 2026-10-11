.class public final synthetic Lcom/sunia/HTREnginev2/vyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onegravity/rteditor/LinkFragment;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/onegravity/rteditor/LinkFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vyi;->e:Lcom/onegravity/rteditor/LinkFragment;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vyi;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vyi;->e:Lcom/onegravity/rteditor/LinkFragment;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vyi;->f:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/onegravity/rteditor/LinkFragment;->d(Lcom/onegravity/rteditor/LinkFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
