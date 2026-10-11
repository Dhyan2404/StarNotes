.class public interface abstract Lnet/sf/saxon/pull/PullProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract close()V
.end method

.method public abstract current()Lnet/sf/saxon/pull/PullEvent;
.end method

.method public abstract getAtomicValue()Lnet/sf/saxon/value/AtomicValue;
.end method

.method public abstract getAttributes()Lnet/sf/saxon/om/AttributeMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getNamespaceDeclarations()[Lnet/sf/saxon/om/NamespaceBinding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getNodeName()Lnet/sf/saxon/om/NodeName;
.end method

.method public abstract getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
.end method

.method public abstract getSchemaType()Lnet/sf/saxon/type/SchemaType;
.end method

.method public abstract getSourceLocator()Lnet/sf/saxon/s9api/Location;
.end method

.method public abstract getStringValue()Lnet/sf/saxon/str/UnicodeString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getUnparsedEntities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/pull/UnparsedEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract next()Lnet/sf/saxon/pull/PullEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
.end method

.method public abstract skipToMatchingEnd()Lnet/sf/saxon/pull/PullEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method
