.class public interface abstract Lnet/sf/saxon/trans/rules/BuiltInRuleSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextOriginator;


# virtual methods
.method public abstract getActionForParentNodes(I)[Lnet/sf/saxon/trans/rules/BuiltInRules;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract process(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
