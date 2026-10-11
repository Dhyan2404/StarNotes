.class public Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/TailCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/instruct/CallTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallTemplatePackage"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/expr/Component;

.field public final b:Lnet/sf/saxon/expr/instruct/ParameterSet;

.field public final c:Lnet/sf/saxon/expr/instruct/ParameterSet;

.field public final d:Lnet/sf/saxon/expr/instruct/CallTemplate;

.field public final e:Lnet/sf/saxon/event/Outputter;

.field public final f:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Component;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/CallTemplate;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->a:Lnet/sf/saxon/expr/Component;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-eqz p1, :cond_0

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->b:Lnet/sf/saxon/expr/instruct/ParameterSet;

    iput-object p3, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->c:Lnet/sf/saxon/expr/instruct/ParameterSet;

    iput-object p4, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->d:Lnet/sf/saxon/expr/instruct/CallTemplate;

    iput-object p5, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->e:Lnet/sf/saxon/event/Outputter;

    iput-object p6, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->f:Lnet/sf/saxon/expr/XPathContext;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "Target of call-template must be a named template"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->a:Lnet/sf/saxon/expr/Component;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->a:Lnet/sf/saxon/expr/Component;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->d:Lnet/sf/saxon/expr/instruct/CallTemplate;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->b:Lnet/sf/saxon/expr/instruct/ParameterSet;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setLocalParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->c:Lnet/sf/saxon/expr/instruct/ParameterSet;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setTunnelParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentMergeGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->expand(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    return-object p0
.end method
