.class public interface abstract Lnet/sf/saxon/expr/XPathContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract evaluateLocalVariable(I)Lnet/sf/saxon/om/Sequence;
.end method

.method public abstract getCaller()Lnet/sf/saxon/expr/XPathContext;
.end method

.method public abstract getConfiguration()Lnet/sf/saxon/Configuration;
.end method

.method public abstract getContextItem()Lnet/sf/saxon/om/Item;
.end method

.method public abstract getController()Lnet/sf/saxon/Controller;
.end method

.method public abstract getCurrentComponent()Lnet/sf/saxon/expr/Component;
.end method

.method public abstract getCurrentDateTime()Lnet/sf/saxon/value/DateTimeValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/NoDynamicContextException;
        }
    .end annotation
.end method

.method public abstract getCurrentException()Lnet/sf/saxon/trans/XPathException;
.end method

.method public abstract getCurrentGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;
.end method

.method public abstract getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;
.end method

.method public abstract getCurrentMergeGroupIterator()Lnet/sf/saxon/expr/sort/GroupIterator;
.end method

.method public abstract getCurrentMode()Lnet/sf/saxon/expr/Component$M;
.end method

.method public abstract getCurrentOutputUri()Ljava/lang/String;
.end method

.method public abstract getCurrentRegexIterator()Lnet/sf/saxon/regex/RegexIterator;
.end method

.method public abstract getCurrentTemplateRule()Lnet/sf/saxon/trans/rules/Rule;
.end method

.method public abstract getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
.end method

.method public abstract getImplicitTimezone()I
.end method

.method public abstract getLast()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/UncheckedXPathException;
        }
    .end annotation
.end method

.method public abstract getLocalParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;
.end method

.method public abstract getNamePool()Lnet/sf/saxon/om/NamePool;
.end method

.method public abstract getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
.end method

.method public abstract getStackFrame()Lnet/sf/saxon/expr/StackFrame;
.end method

.method public abstract getTargetComponent(I)Lnet/sf/saxon/expr/Component;
.end method

.method public abstract getTemporaryOutputState()I
.end method

.method public abstract getThreadManager()Lnet/sf/saxon/expr/XPathContextMajor$ThreadManager;
.end method

.method public abstract getTunnelParameters()Lnet/sf/saxon/expr/instruct/ParameterSet;
.end method

.method public abstract isAtLast()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract iterateStackFrames()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/trace/ContextStackFrame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract newCleanContext()Lnet/sf/saxon/expr/XPathContextMajor;
.end method

.method public abstract newContext()Lnet/sf/saxon/expr/XPathContextMajor;
.end method

.method public abstract newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;
.end method

.method public abstract setCaller(Lnet/sf/saxon/expr/XPathContext;)V
.end method

.method public abstract setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V
.end method

.method public abstract setCurrentOutputUri(Ljava/lang/String;)V
.end method

.method public abstract setLocalVariable(ILnet/sf/saxon/om/Sequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract setTemporaryOutputState(I)V
.end method

.method public abstract trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;
.end method

.method public abstract useLocalParameter(Lnet/sf/saxon/om/StructuredQName;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract waitForChildThreads()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
