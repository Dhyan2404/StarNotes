.class public Lcom/tencent/qimei/ac/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
.implements Lcom/tencent/qimei/ac/a;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public final v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qimei/ac/b;->a:Z

    iput-boolean v0, p0, Lcom/tencent/qimei/ac/b;->b:Z

    iput-boolean v0, p0, Lcom/tencent/qimei/ac/b;->c:Z

    iput-boolean v0, p0, Lcom/tencent/qimei/ac/b;->d:Z

    iput-boolean v0, p0, Lcom/tencent/qimei/ac/b;->e:Z

    iput-boolean v0, p0, Lcom/tencent/qimei/ac/b;->f:Z

    iput-boolean v0, p0, Lcom/tencent/qimei/ac/b;->g:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qimei/ac/b;->h:Z

    iput-boolean v0, p0, Lcom/tencent/qimei/ac/b;->i:Z

    iput-boolean v0, p0, Lcom/tencent/qimei/ac/b;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qimei/ac/b;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qimei/ac/b;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qimei/ac/b;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qimei/ac/b;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qimei/ac/b;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qimei/ac/b;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qimei/ac/b;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qimei/ac/b;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qimei/ac/b;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qimei/ac/b;->u:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->C:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Z
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->F:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qimei/ac/b;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->u:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()Z
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->H:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public e()Z
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->G:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public enableAndroidId(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qimei/ac/b;->d:Z

    return-object p0
.end method

.method public enableAudit(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qimei/ac/b;->h:Z

    return-object p0
.end method

.method public enableBuildModel(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qimei/ac/b;->i:Z

    return-object p0
.end method

.method public enableCid(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qimei/ac/b;->f:Z

    return-object p0
.end method

.method public enableIMEI(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qimei/ac/b;->b:Z

    return-object p0
.end method

.method public enableIMSI(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qimei/ac/b;->c:Z

    return-object p0
.end method

.method public enableMAC(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qimei/ac/b;->e:Z

    return-object p0
.end method

.method public enableOAID(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qimei/ac/b;->a:Z

    return-object p0
.end method

.method public enableProcessInfo(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qimei/ac/b;->g:Z

    return-object p0
.end method

.method public f()Z
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->s:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public g()Z
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->t:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public h()Z
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->E:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->I:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public j()Z
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->v:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public k()Z
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->D:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$b;->l:Lcom/tencent/qimei/k/c;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public m()I
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$b;->i:Lcom/tencent/qimei/k/c;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public n()I
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$b;->k:Lcom/tencent/qimei/k/c;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$c;->f:Lcom/tencent/qimei/k/d;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$c;->e:Lcom/tencent/qimei/k/d;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public q()I
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$b;->h:Lcom/tencent/qimei/k/c;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public r()I
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$b;->j:Lcom/tencent/qimei/k/c;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public s()Z
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$a;->J:Lcom/tencent/qimei/k/b;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/b;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setAndroidId(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->r:Ljava/lang/String;

    return-object p0
.end method

.method public setAuditSoPath(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->n:Ljava/lang/String;

    return-object p0
.end method

.method public setBuildModel(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->u:Ljava/lang/String;

    return-object p0
.end method

.method public setCid(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->t:Ljava/lang/String;

    return-object p0
.end method

.method public setHidProcess(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setIMEI(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->p:Ljava/lang/String;

    return-object p0
.end method

.method public setIMSI(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->q:Ljava/lang/String;

    return-object p0
.end method

.method public setMAC(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->s:Ljava/lang/String;

    return-object p0
.end method

.method public setOAID(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method public setQimeiSoPath(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->m:Ljava/lang/String;

    return-object p0
.end method

.method public setReportDomain(Ljava/lang/String;)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/ac/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setUserAgreePrivacy(Z)Lcom/tencent/qimei/strategy/terminal/ITerminalStrategy;
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qimei/ac/b;->j:Z

    return-object p0
.end method

.method public t()I
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$b;->n:Lcom/tencent/qimei/k/c;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public u()I
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$b;->m:Lcom/tencent/qimei/k/c;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qimei/ab/a$c;->d:Lcom/tencent/qimei/k/d;

    iget-object p0, p0, Lcom/tencent/qimei/ac/b;->v:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/qimei/ab/a;->a(Lcom/tencent/qimei/k/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
