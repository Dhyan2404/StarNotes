.class public Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;
.super Lcom/sunia/HTREnginev2/k3;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EXTENSION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION_INSENSITIVE_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION_SYSTEM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSION_SYSTEM_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1ac277b2c662845fL


# instance fields
.field private final ioCase:Lonyx/org/apache/commons/io/IOCase;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;-><init>()V

    sput-object v0, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_COMPARATOR:Ljava/util/Comparator;

    new-instance v1, Lonyx/org/apache/commons/io/comparator/ReverseFileComparator;

    invoke-direct {v1, v0}, Lonyx/org/apache/commons/io/comparator/ReverseFileComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_REVERSE:Ljava/util/Comparator;

    new-instance v0, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;

    sget-object v1, Lonyx/org/apache/commons/io/IOCase;->INSENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;-><init>(Lonyx/org/apache/commons/io/IOCase;)V

    sput-object v0, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    new-instance v1, Lonyx/org/apache/commons/io/comparator/ReverseFileComparator;

    invoke-direct {v1, v0}, Lonyx/org/apache/commons/io/comparator/ReverseFileComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_INSENSITIVE_REVERSE:Ljava/util/Comparator;

    new-instance v0, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;

    sget-object v1, Lonyx/org/apache/commons/io/IOCase;->SYSTEM:Lonyx/org/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;-><init>(Lonyx/org/apache/commons/io/IOCase;)V

    sput-object v0, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    new-instance v1, Lonyx/org/apache/commons/io/comparator/ReverseFileComparator;

    invoke-direct {v1, v0}, Lonyx/org/apache/commons/io/comparator/ReverseFileComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v1, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;->EXTENSION_SYSTEM_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/k3;-><init>()V

    .line 2
    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    iput-object v0, p0, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;->ioCase:Lonyx/org/apache/commons/io/IOCase;

    return-void
.end method

.method public constructor <init>(Lonyx/org/apache/commons/io/IOCase;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/k3;-><init>()V

    .line 4
    sget-object v0, Lonyx/org/apache/commons/io/IOCase;->SENSITIVE:Lonyx/org/apache/commons/io/IOCase;

    invoke-static {p1, v0}, Lonyx/org/apache/commons/io/IOCase;->value(Lonyx/org/apache/commons/io/IOCase;Lonyx/org/apache/commons/io/IOCase;)Lonyx/org/apache/commons/io/IOCase;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;->ioCase:Lonyx/org/apache/commons/io/IOCase;

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p0, p0, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;->ioCase:Lonyx/org/apache/commons/io/IOCase;

    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/IOCase;->checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic sort(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/k3;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic sort([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/k3;->sort([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sunia/HTREnginev2/k3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[ioCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lonyx/org/apache/commons/io/comparator/ExtensionFileComparator;->ioCase:Lonyx/org/apache/commons/io/IOCase;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
