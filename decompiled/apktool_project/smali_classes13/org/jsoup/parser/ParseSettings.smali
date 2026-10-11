.class public Lorg/jsoup/parser/ParseSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final htmlDefault:Lorg/jsoup/parser/ParseSettings;

.field public static final preserveCase:Lorg/jsoup/parser/ParseSettings;


# instance fields
.field public final a:Z

.field public final b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jsoup/parser/ParseSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/ParseSettings;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    new-instance v0, Lorg/jsoup/parser/ParseSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/ParseSettings;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/ParseSettings;->c:Z

    iput-boolean p1, p0, Lorg/jsoup/parser/ParseSettings;->a:Z

    iput-boolean p2, p0, Lorg/jsoup/parser/ParseSettings;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/nodes/Attributes;
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lorg/jsoup/parser/ParseSettings;->b:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->normalize()V

    :cond_0
    return-object p1
.end method

.method public formatElement()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/parser/ParseSettings;->c:Z

    return p0
.end method

.method public normalizeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Lorg/jsoup/parser/ParseSettings;->b:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public normalizeTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Lorg/jsoup/parser/ParseSettings;->a:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public preserveAttributeCase()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/parser/ParseSettings;->b:Z

    return p0
.end method

.method public preserveTagCase()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/parser/ParseSettings;->a:Z

    return p0
.end method

.method public setFormatElement(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/parser/ParseSettings;->c:Z

    return-void
.end method
