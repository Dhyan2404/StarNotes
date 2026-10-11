.class public Lcom/sun/org/apache/xpath/internal/objects/XMLStringFactoryImpl;
.super Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;
.source "SourceFile"


# static fields
.field private static m_xstringfactory:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XMLStringFactoryImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/objects/XMLStringFactoryImpl;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/objects/XMLStringFactoryImpl;->m_xstringfactory:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;-><init>()V

    return-void
.end method

.method public static getFactory()Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xpath/internal/objects/XMLStringFactoryImpl;->m_xstringfactory:Lcom/sun/org/apache/xml/internal/utils/XMLStringFactory;

    return-object v0
.end method


# virtual methods
.method public emptystr()Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 0

    sget-object p0, Lcom/sun/org/apache/xpath/internal/objects/XString;->EMPTYSTRING:Lcom/sun/org/apache/xpath/internal/objects/XString;

    return-object p0
.end method

.method public newstr(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;II)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 0

    .line 2
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/objects/XStringForFSB;-><init>(Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;II)V

    return-object p0
.end method

.method public newstr(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 0

    .line 1
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XString;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XString;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public newstr([CII)Lcom/sun/org/apache/xml/internal/utils/XMLString;
    .locals 0

    .line 3
    new-instance p0, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/objects/XStringForChars;-><init>([CII)V

    return-object p0
.end method
