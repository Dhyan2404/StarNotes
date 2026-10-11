.class public Lcom/sunia/HTREnginev2/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^.*[\\p{Ll}\\p{Lt}\\p{Lu}\\p{Lo}\\p{Mn}\\p{Mc}&&[^\\p{Script=Bopomofo}\\p{Script=Han}\\p{Script=Hiragana}\\p{Script=Katakana}\\p{Script=Khmer}\\p{Script=Lao}\\p{Script=Myanmar}\\p{Script=Thai}\\p{Script=Yi}\\p{Script=Tai_Le}\\p{Script=New_Tai_Lue}\\p{Script=Tai_Viet}\\p{Script=Tai_Tham}]]$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/o1;->a:Ljava/util/regex/Pattern;

    const-string v0, "^[\\p{Ll}\\p{Lt}\\p{Lu}\\p{Lo}\\p{Mn}\\p{Mc}&&[^\\p{Script=Bopomofo}\\p{Script=Han}\\p{Script=Hiragana}\\p{Script=Katakana}\\p{Script=Khmer}\\p{Script=Lao}\\p{Script=Myanmar}\\p{Script=Thai}\\p{Script=Yi}\\p{Script=Tai_Le}\\p{Script=New_Tai_Lue}\\p{Script=Tai_Viet}\\p{Script=Tai_Tham}]].*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/o1;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
