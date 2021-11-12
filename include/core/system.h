#ifndef GUARD_CORE_SYSTEM_H
#define GUARD_CORE_SYSTEM_H

#include "core/base.h"

class System : Base {
public:
    struct A {
        virtual ~A();

        u32 _0;
    };

    System();
    virtual ~System();

    virtual void* getInstance();

    virtual A* sub_0805D5BC();
    virtual u32 sub_0805D5C0();
    virtual u32 sub_0805D5D0();
    virtual u32 sub_0805D604();
    virtual void sub_0805D638();
    virtual u32 sub_0805D64C();
    virtual void sub_0805D6F8();
    
    void sub_0805D768();

    A* _20;
};
SINGLETON_MGR(System)

#endif  // GUARD_CORE_SYSTEM_H
