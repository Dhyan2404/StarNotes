.class public Lorg/apache/poi/sl/draw/PlaceholderTextAttribute;
.super Ljava/text/AttributedCharacterIterator$Attribute;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/sl/draw/PlaceholderTextAttribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/sl/draw/PlaceholderTextAttribute;

    const-string v1, "PlaceholderText"

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/PlaceholderTextAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/PlaceholderTextAttribute;->instance:Lorg/apache/poi/sl/draw/PlaceholderTextAttribute;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/AttributedCharacterIterator$Attribute;-><init>(Ljava/lang/String;)V

    return-void
.end method
