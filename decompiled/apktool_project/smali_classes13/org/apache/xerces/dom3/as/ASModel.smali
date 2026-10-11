.class public interface abstract Lorg/apache/xerces/dom3/as/ASModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/dom3/as/ASObject;


# virtual methods
.method public abstract addASModel(Lorg/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract createASAttributeDeclaration(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/dom3/as/ASAttributeDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract createASContentModel(IIS)Lorg/apache/xerces/dom3/as/ASContentModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/dom3/as/DOMASException;
        }
    .end annotation
.end method

.method public abstract createASElementDeclaration(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/dom3/as/ASElementDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract createASEntityDeclaration(Ljava/lang/String;)Lorg/apache/xerces/dom3/as/ASEntityDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract createASNotationDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/dom3/as/ASNotationDeclaration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method

.method public abstract getASModels()Lorg/apache/xerces/dom3/as/ASObjectList;
.end method

.method public abstract getAsHint()Ljava/lang/String;
.end method

.method public abstract getAsLocation()Ljava/lang/String;
.end method

.method public abstract getAttributeDeclarations()Lorg/apache/xerces/dom3/as/ASNamedObjectMap;
.end method

.method public abstract getContentModelDeclarations()Lorg/apache/xerces/dom3/as/ASNamedObjectMap;
.end method

.method public abstract getElementDeclarations()Lorg/apache/xerces/dom3/as/ASNamedObjectMap;
.end method

.method public abstract getEntityDeclarations()Lorg/apache/xerces/dom3/as/ASNamedObjectMap;
.end method

.method public abstract getIsNamespaceAware()Z
.end method

.method public abstract getNotationDeclarations()Lorg/apache/xerces/dom3/as/ASNamedObjectMap;
.end method

.method public abstract getUsageLocation()S
.end method

.method public abstract removeAS(Lorg/apache/xerces/dom3/as/ASModel;)V
.end method

.method public abstract setAsHint(Ljava/lang/String;)V
.end method

.method public abstract setAsLocation(Ljava/lang/String;)V
.end method

.method public abstract validate()Z
.end method
