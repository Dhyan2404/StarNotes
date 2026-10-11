.class Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MappingRecord"
.end annotation


# instance fields
.field final m_declarationDepth:I

.field final m_prefix:Ljava/lang/String;

.field final m_uri:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;->this$0:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;->m_prefix:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;->m_uri:Ljava/lang/String;

    iput p4, p0, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings$MappingRecord;->m_declarationDepth:I

    return-void
.end method
