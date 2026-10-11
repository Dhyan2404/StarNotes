.class public final Lcom/onyx/tex/MathLaTeX$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/tex/MathLaTeX;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/tex/MathLaTeX$a;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lio/nano/tex/LaTeX;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/tex/MathLaTeX$a;->e:Landroid/content/Context;

    invoke-static {p0}, Lio/nano/tex/LaTeX;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
