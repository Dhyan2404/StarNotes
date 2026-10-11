.class public interface abstract Lnet/sf/saxon/style/StylesheetComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkCompatibility(Lnet/sf/saxon/expr/Component;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract generateByteCode(Lnet/sf/saxon/expr/parser/Optimizer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getActor()Lnet/sf/saxon/expr/instruct/Actor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
.end method

.method public abstract getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
.end method

.method public abstract optimize(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
