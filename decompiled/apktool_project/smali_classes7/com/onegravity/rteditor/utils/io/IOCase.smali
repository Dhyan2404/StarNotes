.class public final Lcom/onegravity/rteditor/utils/io/IOCase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSENSITIVE:Lcom/onegravity/rteditor/utils/io/IOCase;

.field public static final SENSITIVE:Lcom/onegravity/rteditor/utils/io/IOCase;

.field public static final SYSTEM:Lcom/onegravity/rteditor/utils/io/IOCase;

.field private static final serialVersionUID:J = -0x580776bc651386cfL


# instance fields
.field private final name:Ljava/lang/String;

.field private final transient sensitive:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onegravity/rteditor/utils/io/IOCase;

    const-string v1, "Sensitive"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/utils/io/IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onegravity/rteditor/utils/io/IOCase;->SENSITIVE:Lcom/onegravity/rteditor/utils/io/IOCase;

    new-instance v0, Lcom/onegravity/rteditor/utils/io/IOCase;

    const-string v1, "Insensitive"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/onegravity/rteditor/utils/io/IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onegravity/rteditor/utils/io/IOCase;->INSENSITIVE:Lcom/onegravity/rteditor/utils/io/IOCase;

    new-instance v0, Lcom/onegravity/rteditor/utils/io/IOCase;

    invoke-static {}, Lcom/onegravity/rteditor/utils/io/FilenameUtils;->e()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v2, "System"

    invoke-direct {v0, v2, v1}, Lcom/onegravity/rteditor/utils/io/IOCase;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onegravity/rteditor/utils/io/IOCase;->SYSTEM:Lcom/onegravity/rteditor/utils/io/IOCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/utils/io/IOCase;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/onegravity/rteditor/utils/io/IOCase;->sensitive:Z

    return-void
.end method

.method public static forName(Ljava/lang/String;)Lcom/onegravity/rteditor/utils/io/IOCase;
    .locals 3

    sget-object v0, Lcom/onegravity/rteditor/utils/io/IOCase;->SENSITIVE:Lcom/onegravity/rteditor/utils/io/IOCase;

    iget-object v1, v0, Lcom/onegravity/rteditor/utils/io/IOCase;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/onegravity/rteditor/utils/io/IOCase;->INSENSITIVE:Lcom/onegravity/rteditor/utils/io/IOCase;

    iget-object v1, v0, Lcom/onegravity/rteditor/utils/io/IOCase;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/onegravity/rteditor/utils/io/IOCase;->SYSTEM:Lcom/onegravity/rteditor/utils/io/IOCase;

    iget-object v1, v0, Lcom/onegravity/rteditor/utils/io/IOCase;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IOCase name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/utils/io/IOCase;->name:Ljava/lang/String;

    invoke-static {p0}, Lcom/onegravity/rteditor/utils/io/IOCase;->forName(Ljava/lang/String;)Lcom/onegravity/rteditor/utils/io/IOCase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean p0, p0, Lcom/onegravity/rteditor/utils/io/IOCase;->sensitive:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The strings must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    iget-boolean p0, p0, Lcom/onegravity/rteditor/utils/io/IOCase;->sensitive:Z

    xor-int/lit8 v1, p0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int v2, p0, v5

    const/4 v4, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public checkEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean p0, p0, Lcom/onegravity/rteditor/utils/io/IOCase;->sensitive:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The strings must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_1

    :goto_0
    if-gt p2, v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/onegravity/rteditor/utils/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6

    iget-boolean p0, p0, Lcom/onegravity/rteditor/utils/io/IOCase;->sensitive:Z

    xor-int/lit8 v1, p0, 0x1

    const/4 v4, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    iget-boolean p0, p0, Lcom/onegravity/rteditor/utils/io/IOCase;->sensitive:Z

    xor-int/lit8 v1, p0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/utils/io/IOCase;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isCaseSensitive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/utils/io/IOCase;->sensitive:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/utils/io/IOCase;->name:Ljava/lang/String;

    return-object p0
.end method
