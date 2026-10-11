.class public Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/TailCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/instruct/ApplyTemplates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplyTemplatesPackage"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/om/Sequence;

.field public b:Lnet/sf/saxon/expr/Component$M;

.field public c:Lnet/sf/saxon/expr/instruct/ParameterSet;

.field public d:Lnet/sf/saxon/expr/instruct/ParameterSet;

.field public e:Lnet/sf/saxon/om/NodeInfo;

.field public f:Lnet/sf/saxon/expr/XPathContextMajor;

.field public g:Lnet/sf/saxon/event/Outputter;

.field public h:Lnet/sf/saxon/s9api/Location;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/Component$M;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->a:Lnet/sf/saxon/om/Sequence;

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->b:Lnet/sf/saxon/expr/Component$M;

    iput-object p3, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->c:Lnet/sf/saxon/expr/instruct/ParameterSet;

    iput-object p4, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->d:Lnet/sf/saxon/expr/instruct/ParameterSet;

    iput-object p5, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->e:Lnet/sf/saxon/om/NodeInfo;

    iput-object p6, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->g:Lnet/sf/saxon/event/Outputter;

    iput-object p7, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->f:Lnet/sf/saxon/expr/XPathContextMajor;

    iput-object p8, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->h:Lnet/sf/saxon/s9api/Location;

    return-void
.end method


# virtual methods
.method public processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->f:Lnet/sf/saxon/expr/XPathContextMajor;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->a:Lnet/sf/saxon/om/Sequence;

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->f:Lnet/sf/saxon/expr/XPathContextMajor;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->b:Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentMode(Lnet/sf/saxon/expr/Component$M;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->f:Lnet/sf/saxon/expr/XPathContextMajor;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->b:Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->b:Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->c:Lnet/sf/saxon/expr/instruct/ParameterSet;

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->d:Lnet/sf/saxon/expr/instruct/ParameterSet;

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->e:Lnet/sf/saxon/om/NodeInfo;

    iget-object v5, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->g:Lnet/sf/saxon/event/Outputter;

    iget-object v6, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->f:Lnet/sf/saxon/expr/XPathContextMajor;

    iget-object v7, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;->h:Lnet/sf/saxon/s9api/Location;

    invoke-virtual/range {v1 .. v7}, Lnet/sf/saxon/trans/Mode;->applyTemplates(Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    return-object p0
.end method
