.class public final synthetic Lcom/sunia/HTREnginev2/osg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextMappingFunction;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/instruct/ForEachGroup;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/instruct/ForEachGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/osg;->a:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/osg;->a:Lnet/sf/saxon/expr/instruct/ForEachGroup;

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/instruct/ForEachGroup;->d(Lnet/sf/saxon/expr/instruct/ForEachGroup;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
