package kr.ac.hansung.cse.hellospringdatajpa.entity;

import jakarta.persistence.*;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;

@Entity
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor @Builder
public class Role implements GrantedAuthority {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true, nullable = false)
    private String name; // 예: ROLE_USER, ROLE_ADMIN

    @Override
    public String getAuthority() {
        return name;
    }
}