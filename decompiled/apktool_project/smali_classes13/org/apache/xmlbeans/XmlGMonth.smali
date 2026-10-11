.class public interface abstract Lorg/apache/xmlbeans/XmlGMonth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlAnySimpleType;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory<",
            "Lorg/apache/xmlbeans/XmlGMonth;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;

    const-string v1, "_BI_gMonth"

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/XmlGMonth;->Factory:Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlGMonth;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCalendarValue()Ljava/util/Calendar;
.end method

.method public abstract getGDateValue()Lorg/apache/xmlbeans/GDate;
.end method

.method public abstract getIntValue()I
.end method

.method public abstract setCalendarValue(Ljava/util/Calendar;)V
.end method

.method public abstract setGDateValue(Lorg/apache/xmlbeans/GDate;)V
.end method

.method public abstract setIntValue(I)V
.end method
