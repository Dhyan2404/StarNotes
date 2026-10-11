.class public Lcom/sun/org/apache/xml/internal/utils/NSInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANCESTORHASXMLNS:I = 0x1

.field public static final ANCESTORNOXMLNS:I = 0x2

.field public static final ANCESTORXMLNSUNPROCESSED:I


# instance fields
.field public m_ancestorHasXMLNSAttrs:I

.field public m_hasProcessedNS:Z

.field public m_hasXMLNSAttrs:Z

.field public m_namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_hasProcessedNS:Z

    .line 13
    iput-boolean p2, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_hasXMLNSAttrs:Z

    .line 14
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_namespace:Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_hasProcessedNS:Z

    .line 3
    iput-boolean p2, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_hasXMLNSAttrs:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_namespace:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_hasProcessedNS:Z

    .line 8
    iput-boolean p2, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_hasXMLNSAttrs:Z

    .line 9
    iput p3, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_ancestorHasXMLNSAttrs:I

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/NSInfo;->m_namespace:Ljava/lang/String;

    return-void
.end method
