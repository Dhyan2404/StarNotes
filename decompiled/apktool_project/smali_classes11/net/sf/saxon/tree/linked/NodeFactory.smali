.class public interface abstract Lnet/sf/saxon/tree/linked/NodeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract makeElementNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;ZLnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/s9api/Location;I)Lnet/sf/saxon/tree/linked/ElementImpl;
.end method

.method public abstract makeTextNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/tree/linked/TextImpl;
.end method
