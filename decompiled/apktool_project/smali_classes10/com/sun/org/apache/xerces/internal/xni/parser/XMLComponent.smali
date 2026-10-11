.class public interface abstract Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getRecognizedFeatures()[Ljava/lang/String;
.end method

.method public abstract getRecognizedProperties()[Ljava/lang/String;
.end method

.method public abstract reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation
.end method
