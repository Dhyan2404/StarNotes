.class public interface abstract Lcom/sun/org/apache/bcel/internal/ExceptionConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABSTRACT_METHOD_ERROR:Ljava/lang/Class;

.field public static final ARITHMETIC_EXCEPTION:Ljava/lang/Class;

.field public static final ARRAY_INDEX_OUT_OF_BOUNDS_EXCEPTION:Ljava/lang/Class;

.field public static final CLASS_CAST_EXCEPTION:Ljava/lang/Class;

.field public static final CLASS_CIRCULARITY_ERROR:Ljava/lang/Class;

.field public static final CLASS_FORMAT_ERROR:Ljava/lang/Class;

.field public static final EXCEPTION_IN_INITIALIZER_ERROR:Ljava/lang/Class;

.field public static final EXCS_ARRAY_EXCEPTION:[Ljava/lang/Class;

.field public static final EXCS_CLASS_AND_INTERFACE_RESOLUTION:[Ljava/lang/Class;

.field public static final EXCS_FIELD_AND_METHOD_RESOLUTION:[Ljava/lang/Class;

.field public static final EXCS_INTERFACE_METHOD_RESOLUTION:[Ljava/lang/Class;

.field public static final EXCS_STRING_RESOLUTION:[Ljava/lang/Class;

.field public static final ILLEGAL_ACCESS_ERROR:Ljava/lang/Class;

.field public static final ILLEGAL_MONITOR_STATE:Ljava/lang/Class;

.field public static final INCOMPATIBLE_CLASS_CHANGE_ERROR:Ljava/lang/Class;

.field public static final INSTANTIATION_ERROR:Ljava/lang/Class;

.field public static final LINKING_EXCEPTION:Ljava/lang/Class;

.field public static final NEGATIVE_ARRAY_SIZE_EXCEPTION:Ljava/lang/Class;

.field public static final NO_CLASS_DEF_FOUND_ERROR:Ljava/lang/Class;

.field public static final NO_SUCH_FIELD_ERROR:Ljava/lang/Class;

.field public static final NO_SUCH_METHOD_ERROR:Ljava/lang/Class;

.field public static final NULL_POINTER_EXCEPTION:Ljava/lang/Class;

.field public static final RUNTIME_EXCEPTION:Ljava/lang/Class;

.field public static final THROWABLE:Ljava/lang/Class;

.field public static final UNSATISFIED_LINK_ERROR:Ljava/lang/Class;

.field public static final VERIFY_ERROR:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-class v0, Ljava/lang/Throwable;

    sput-object v0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->THROWABLE:Ljava/lang/Class;

    const-class v0, Ljava/lang/RuntimeException;

    sput-object v0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->RUNTIME_EXCEPTION:Ljava/lang/Class;

    const-class v0, Ljava/lang/LinkageError;

    sput-object v0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->LINKING_EXCEPTION:Ljava/lang/Class;

    const-class v0, Ljava/lang/ClassCircularityError;

    sput-object v0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->CLASS_CIRCULARITY_ERROR:Ljava/lang/Class;

    const-class v0, Ljava/lang/ClassFormatError;

    sput-object v0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->CLASS_FORMAT_ERROR:Ljava/lang/Class;

    const-class v1, Ljava/lang/ExceptionInInitializerError;

    sput-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCEPTION_IN_INITIALIZER_ERROR:Ljava/lang/Class;

    const-class v2, Ljava/lang/IncompatibleClassChangeError;

    sput-object v2, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->INCOMPATIBLE_CLASS_CHANGE_ERROR:Ljava/lang/Class;

    const-class v2, Ljava/lang/AbstractMethodError;

    sput-object v2, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->ABSTRACT_METHOD_ERROR:Ljava/lang/Class;

    const-class v3, Ljava/lang/IllegalAccessError;

    sput-object v3, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->ILLEGAL_ACCESS_ERROR:Ljava/lang/Class;

    const-class v4, Ljava/lang/InstantiationError;

    sput-object v4, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->INSTANTIATION_ERROR:Ljava/lang/Class;

    const-class v4, Ljava/lang/NoSuchFieldError;

    sput-object v4, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->NO_SUCH_FIELD_ERROR:Ljava/lang/Class;

    const-class v5, Ljava/lang/NoSuchMethodError;

    sput-object v5, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->NO_SUCH_METHOD_ERROR:Ljava/lang/Class;

    const-class v6, Ljava/lang/NoClassDefFoundError;

    sput-object v6, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->NO_CLASS_DEF_FOUND_ERROR:Ljava/lang/Class;

    const-class v7, Ljava/lang/UnsatisfiedLinkError;

    sput-object v7, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->UNSATISFIED_LINK_ERROR:Ljava/lang/Class;

    const-class v7, Ljava/lang/VerifyError;

    sput-object v7, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->VERIFY_ERROR:Ljava/lang/Class;

    const-class v8, Ljava/lang/NullPointerException;

    sput-object v8, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->NULL_POINTER_EXCEPTION:Ljava/lang/Class;

    const-class v9, Ljava/lang/ArrayIndexOutOfBoundsException;

    sput-object v9, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->ARRAY_INDEX_OUT_OF_BOUNDS_EXCEPTION:Ljava/lang/Class;

    const-class v10, Ljava/lang/ArithmeticException;

    sput-object v10, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->ARITHMETIC_EXCEPTION:Ljava/lang/Class;

    const-class v10, Ljava/lang/NegativeArraySizeException;

    sput-object v10, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->NEGATIVE_ARRAY_SIZE_EXCEPTION:Ljava/lang/Class;

    const-class v10, Ljava/lang/ClassCastException;

    sput-object v10, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->CLASS_CAST_EXCEPTION:Ljava/lang/Class;

    const-class v10, Ljava/lang/IllegalMonitorStateException;

    sput-object v10, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->ILLEGAL_MONITOR_STATE:Ljava/lang/Class;

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v6, 0x1

    aput-object v0, v10, v6

    const/4 v0, 0x2

    aput-object v7, v10, v0

    const/4 v7, 0x3

    aput-object v2, v10, v7

    const/4 v2, 0x4

    aput-object v1, v10, v2

    const/4 v1, 0x5

    aput-object v3, v10, v1

    sput-object v10, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCS_CLASS_AND_INTERFACE_RESOLUTION:[Ljava/lang/Class;

    new-array v1, v7, [Ljava/lang/Class;

    aput-object v4, v1, v11

    aput-object v3, v1, v6

    aput-object v5, v1, v0

    sput-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCS_FIELD_AND_METHOD_RESOLUTION:[Ljava/lang/Class;

    new-array v1, v11, [Ljava/lang/Class;

    sput-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCS_INTERFACE_METHOD_RESOLUTION:[Ljava/lang/Class;

    new-array v1, v11, [Ljava/lang/Class;

    sput-object v1, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCS_STRING_RESOLUTION:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v8, v0, v11

    aput-object v9, v0, v6

    sput-object v0, Lcom/sun/org/apache/bcel/internal/ExceptionConstants;->EXCS_ARRAY_EXCEPTION:[Ljava/lang/Class;

    return-void
.end method
