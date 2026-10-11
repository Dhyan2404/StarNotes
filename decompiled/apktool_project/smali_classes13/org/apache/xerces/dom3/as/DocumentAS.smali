.class public interface abstract Lorg/apache/xerces/dom3/as/DocumentAS;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addAS(Lorg/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract getActiveASModel()Lorg/apache/xerces/dom3/as/ASModel;
.end method

.method public abstract getBoundASModels()Lorg/apache/xerces/dom3/as/ASObjectList;
.end method

.method public abstract getElementDeclaration()Lorg/apache/xerces/dom3/as/ASElementDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getInternalAS()Lorg/apache/xerces/dom3/as/ASModel;
.end method

.method public abstract removeAS(Lorg/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract setActiveASModel(Lorg/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract setBoundASModels(Lorg/apache/xerces/dom3/as/ASObjectList;)V
.end method

.method public abstract setInternalAS(Lorg/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract validate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/dom3/as/DOMASException;
        }
    .end annotation
.end method
