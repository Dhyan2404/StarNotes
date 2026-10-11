.class public Lcom/onegravity/rteditor/LinkFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/LinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/onegravity/rteditor/LinkFragment$b;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/onegravity/rteditor/LinkFragment$b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/LinkFragment$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onegravity/rteditor/LinkFragment$c;->b:Lcom/onegravity/rteditor/LinkFragment$b;

    iput-boolean p3, p0, Lcom/onegravity/rteditor/LinkFragment$c;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/LinkFragment$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/onegravity/rteditor/LinkFragment$b;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/LinkFragment$c;->b:Lcom/onegravity/rteditor/LinkFragment$b;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/LinkFragment$c;->c:Z

    return p0
.end method
