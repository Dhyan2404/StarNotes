.class public final Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    const-string v1, "com.sun.org.apache.xml.internal.serializer.utils.SerializerMessages"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
