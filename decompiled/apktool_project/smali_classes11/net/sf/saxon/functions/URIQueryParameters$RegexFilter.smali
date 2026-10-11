.class public Lnet/sf/saxon/functions/URIQueryParameters$RegexFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/URIQueryParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegexFilter"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/regex/RegularExpression;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/RegularExpression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/URIQueryParameters$RegexFilter;->e:Lnet/sf/saxon/regex/RegularExpression;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/functions/URIQueryParameters$RegexFilter;->e:Lnet/sf/saxon/regex/RegularExpression;

    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/regex/RegularExpression;->matches(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/URIQueryParameters$RegexFilter;->e:Lnet/sf/saxon/regex/RegularExpression;

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/regex/RegularExpression;->matches(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    return p0
.end method
